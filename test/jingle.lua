package.path = '../../lua-otalk/?.lua;' .. '../src/?.lua;' .. package.path

require "verse"

function jingleStanza()
return stanza.iq({ type = "set", from = "room@stage-conference.talky.io" })
    :tag("jingle", { initiator = "room@stage-conference.talky.io", action = "session-initiate", xmlns = "urn:xmpp:jingle:1" })
        :tag("content", { senders = "both", creator = "initiator", name = "audio" })
            :tag("description", { media = "audio", xmlns = "urn:xmpp:jingle:apps:rtp:1" })
                :tag("payload-type", { id = "111", name = "opus", clockrate = "48000" })
                    :tag("parameter", { name = "minptime", value = "10" }):up():up()
                :tag("payload-type", { id = "0", name = "PCMU", clockrate = "8000" }):up()
                :tag("payload-type", { id = "8", name = "PCMA", clockrate = "8000" }):up()
                :tag("payload-type", { id = "103", name = "ISAC", clockrate = "16000" }):up()
                :tag("payload-type", { id = "104", name = "ISAC" }):up()
                :tag("rtp-hdrext", { id = "1", uri = "urn:ietf:params:rtp-hdrext:ssrc-audio-level", xmlns = "urn:xmpp:jingle:apps:rtp:rtp-hdrext:0" }):up()
                :tag("rtp-hdrext", { id = "3", uri = "http://www.webrtc.org/experiments/rtp-hdrext/abs-send-time", xmlns = "urn:xmpp:jingle:apps:rtp:rtp-hdrext:0" }):up()
                :tag("rtcp-mux"):up():up()
            :tag("transport", { xmlns = "urn:xmpp:jingle:transports:ice-udp:1" })
                :tag("rtcp-mux"):up()
                :tag("fingerprint", { hash = "sha-1", setup = "actpass", xmlns = "urn:xmpp:jingle:apps:dtls:0" }):text("CA:71:53:79:00:5A:AF:15:42:18:26:AB:AC:23:CC:BC:8F:E0:CE:38"):up()
                :tag("candidate", { type = "host", protocol = "udp", component = "1", port = "10003", foundation = "1", generation = "0", network = "0" }):up()
                :tag("candidate", { type = "host", protocol = "udp", component = "1", port = "10003", generation = "0", network = "0" }):up()
                :tag("candidate", { type = "host", protocol = "udp", component = "1", port = "10003", foundation = "3", generation = "0", network = "0" }):up()
                :tag("candidate", { type = "host", protocol = "udp", component = "1", port = "10003", foundation = "4", generation = "0", network = "0" }):up()
                :tag("candidate", { ["rel-port"] = "4443", type = "srflx", protocol = "ssltcp", component = "1", port = "443", foundation = "11", generation = "0", network = "0" }):up()
                :tag("candidate", { ["rel-port"] = "4443", type = "srflx", protocol = "ssltcp", component = "1", port = "443", foundation = "9", generation = "0", network = "0" }):up()
                :tag("candidate", { ["rel-port"] = "4443", type = "srflx", protocol = "ssltcp", component = "1", port = "443", foundation = "10", generation = "0", network = "0" }):up()
                :tag("candidate", { ["rel-port"] = "4443", type = "srflx", protocol = "ssltcp", component = "1", port = "443", generation = "0", network = "0" }):up():up():up()
        :tag("content", { senders = "both", creator = "initiator", name = "video" })
            :tag("description", { media = "video", xmlns = "urn:xmpp:jingle:apps:rtp:1" })
                :tag("payload-type", { id = "100", name = "VP8", clockrate = "90000" })
                    :tag("rtcp-fb", { type = "ccm", subtype = "fir", xmlns = "urn:xmpp:jingle:apps:rtp:rtcp-fb:0" }):up()
                    :tag("rtcp-fb", { type = "nack", xmlns = "urn:xmpp:jingle:apps:rtp:rtcp-fb:0" }):up()
                    :tag("rtcp-fb", { type = "goog-remb", xmlns = "urn:xmpp:jingle:apps:rtp:rtcp-fb:0" }):up():up()
                :tag("payload-type", { id = "116", name = "red", clockrate = "90000" }):up()
                :tag("rtp-hdrext", { uri = "urn:ietf:params:rtp-hdrext:toffset", xmlns = "urn:xmpp:jingle:apps:rtp:rtp-hdrext:0" }):up()
                :tag("rtp-hdrext", { id = "3", uri = "http://www.webrtc.org/experiments/rtp-hdrext/abs-send-time", xmlns = "urn:xmpp:jingle:apps:rtp:rtp-hdrext:0" }):up()
                :tag("rtcp-mux"):up():up()
            :tag("transport", { xmlns = "urn:xmpp:jingle:transports:ice-udp:1" })
                :tag("rtcp-mux"):up()
                :tag("fingerprint", { hash = "sha-1", setup = "actpass", xmlns = "urn:xmpp:jingle:apps:dtls:0" }):text("CA:71:53:79:00:5A:AF:15:42:18:26:AB:AC:23:CC:BC:8F:E0:CE:38"):up()
                :tag("candidate", { type = "host", protocol = "udp", component = "1", port = "10003", foundation = "1", generation = "0", network = "0" }):up()
                :tag("candidate", { type = "host", protocol = "udp", component = "1", port = "10003", generation = "0", network = "0" }):up()
                :tag("candidate", { type = "host", protocol = "udp", component = "1", port = "10003", foundation = "3", generation = "0", network = "0" }):up()
                :tag("candidate", { type = "host", protocol = "udp", component = "1", port = "10003", foundation = "4", generation = "0", network = "0" }):up()
                :tag("candidate", { ["rel-port"] = "4443", type = "srflx", protocol = "ssltcp", component = "1", port = "443", foundation = "11", generation = "0", network = "0" }):up()
                :tag("candidate", { ["rel-port"] = "4443", type = "srflx", protocol = "ssltcp", component = "1", port = "443", foundation = "9", generation = "0", network = "0" }):up()
                :tag("candidate", { ["rel-port"] = "4443", type = "srflx", protocol = "ssltcp", component = "1", port = "443", foundation = "10", generation = "0", network = "0" }):up()
                :tag("candidate", { ["rel-port"] = "4443", type = "srflx", protocol = "ssltcp", component = "1", port = "443", generation = "0", network = "0" }):up():up():up()
        :tag("content", { senders = "both", creator = "initiator", name = "data" })
            :tag("description", { xmlns = "http://talky.io/ns/datachannel" }):up()
            :tag("transport", { xmlns = "urn:xmpp:jingle:transports:ice-udp:1" })
                :tag("rtcp-mux"):up()
                :tag("fingerprint", { hash = "sha-1", setup = "actpass", xmlns = "urn:xmpp:jingle:apps:dtls:0" }):text("CA:71:53:79:00:5A:AF:15:42:18:26:AB:AC:23:CC:BC:8F:E0:CE:38"):up()
                :tag("candidate", { type = "host", protocol = "udp", component = "1", port = "10003", foundation = "1", generation = "0", network = "0" }):up()
                :tag("candidate", { type = "host", protocol = "udp", component = "1", port = "10003", generation = "0", network = "0" }):up()
                :tag("candidate", { type = "host", protocol = "udp", component = "1", port = "10003", foundation = "3", generation = "0", network = "0" }):up()
                :tag("candidate", { type = "host", protocol = "udp", component = "1", port = "10003", foundation = "4", generation = "0", network = "0" }):up()
                :tag("candidate", { ["rel-port"] = "4443", type = "srflx", protocol = "ssltcp", component = "1", port = "443", foundation = "11", generation = "0", network = "0" }):up()
                :tag("candidate", { ["rel-port"] = "4443", type = "srflx", protocol = "ssltcp", component = "1", port = "443", foundation = "9", generation = "0", network = "0" }):up()
                :tag("candidate", { ["rel-port"] = "4443", type = "srflx", protocol = "ssltcp", component = "1", port = "443", foundation = "10", generation = "0", network = "0" }):up()
                :tag("candidate", { ["rel-port"] = "4443", type = "srflx", protocol = "ssltcp", component = "1", port = "443", generation = "0", network = "0" }):up()
                :tag("sctpmap", { number = "5000", protocol = "webrtc-datachannel", xmlns = "urn:xmpp:jingle:transports:dtls-sctp:1" }):up():up():up()
        :tag("group", { semantics = "BUNDLE", xmlns = "urn:xmpp:jingle:apps:grouping:0" })
            :tag("content", { name = "audio" }):up()
            :tag("content", { name = "video" }):up()
            :tag("content", { name = "data" }):up():up():up():up()
end
