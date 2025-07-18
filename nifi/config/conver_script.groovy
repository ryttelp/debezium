import java.text.SimpleDateFormat

def formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS")
formatter.setTimeZone(TimeZone.getTimeZone("UTC"))

def convertEpochDates(obj) {
    if (obj instanceof Map) {
        obj.each { k, v ->
            if ((k ==~ /(?i).*date.*|.*time.*|.*ts.*/ || k ==~ /.*_at$/)) {
                try {
                    long epoch = Long.parseLong(v.toString())
                    obj[k] = formatter.format(new Date(epoch))
                } catch (e) {
                    // Not epoch, do nothing
                }
            } else {
                convertEpochDates(v)
            }
        }
    } else if (obj instanceof List) {
        obj.each { item -> convertEpochDates(item) }
    }
}

convertEpochDates(record)
return record