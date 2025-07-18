import java.text.SimpleDateFormat

def formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS")
formatter.setTimeZone(TimeZone.getTimeZone("UTC"))

def convertEpochDates(obj) {
    if (obj instanceof Map) {
        obj.each { k, v ->
            if ((k ==~ /(?i).*date.*|.*time.*|.*ts.*/ || k ==~ /.*_at$/)) {
                try {
                    long epochNs = Long.parseLong(v.toString())
                    long epochMs = (long)(epochNs / 1_000_000L)
                    obj[k] = formatter.format(new Date(epochMs))
                } catch (Exception e) {
                    // log.error("Błąd parsowania daty w polu: ${k}", e)
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