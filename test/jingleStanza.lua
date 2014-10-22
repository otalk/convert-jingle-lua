package.path = '../../lua-otalk/?.lua;' .. '../src/?.lua;' .. package.path

require "verse"

function jingleStanza()
return stanza.iq({ type = "set", from = "room@stage-conference.talky.io" })
    :tag("jingle", { sid = "ab0016bc23684f53", initiator = "room@stage-conference.talky.io", action = "session-initiate", xmlns = "urn:xmpp:jingle:1" })
        :tag("content", { senders = "both", creator = "initiator", name = "audio" })
            :tag("description", { media = "audio", xmlns = "urn:xmpp:jingle:apps:rtp:1" })
                :tag("payload-type", { id = "111", channels = "2", name = "opus", clockrate = "48000" })
                    :tag("parameter", { name = "minptime", value = "10" }):up():up()
                :tag("payload-type", { id = "0", name = "PCMU", clockrate = "8000" }):up()
                :tag("payload-type", { id = "8", name = "PCMA", clockrate = "8000" }):up()
                :tag("payload-type", { id = "103", name = "ISAC", clockrate = "16000" }):up()
                :tag("payload-type", { id = "104", name = "ISAC", clockrate = "32000" }):up()
                :tag("rtp-hdrext", { id = "1", uri = "urn:ietf:params:rtp-hdrext:ssrc-audio-level", xmlns = "urn:xmpp:jingle:apps:rtp:rtp-hdrext:0" }):up()
                :tag("rtp-hdrext", { id = "3", uri = "http://www.webrtc.org/experiments/rtp-hdrext/abs-send-time", xmlns = "urn:xmpp:jingle:apps:rtp:rtp-hdrext:0" }):up()
                :tag("rtcp-mux"):up():up()
            :tag("transport", { ufrag = "1v8rh1945k1u2j", pwd = "5vih74ib4bt6rftogeeo28usmc", xmlns = "urn:xmpp:jingle:transports:ice-udp:1" })
                :tag("rtcp-mux"):up()
                :tag("fingerprint", { hash = "sha-1", setup = "actpass", xmlns = "urn:xmpp:jingle:apps:dtls:0" }):text("CA:71:53:79:00:5A:AF:15:42:18:26:AB:AC:23:CC:BC:8F:E0:CE:38"):up()
                :tag("candidate", { type = "host", protocol = "udp", id = "ab0016bc23684f534c2df63d76c9c28b03803709a", ip = "192.168.6.36", component = "1", port = "10003", foundation = "1", generation = "0", priority = "2130706431", network = "0" }):up()
                :tag("candidate", { type = "host", protocol = "udp", id = "ab0016bc23684f534c2df63d76c9c28b069d5ab30", ip = "10.208.225.101", component = "1", port = "10003", generation = "0", generation = "0", priority = "2130706431", network = "0" }):up()
                :tag("candidate", { type = "host", protocol = "udp", id = "ab0016bc23684f534c2df63d76c9c28b04ada1298", ip = "2001:4800:7818:101:be76:4eff:fe05:69a4", component = "1", port = "10003", foundation = "3", generation = "0", priority = "2113939711", network = "0" }):up()
                :tag("candidate", { type = "host", protocol = "udp", id = "ab0016bc23684f534c2df63d76c9c28b032fadf8c", ip = "23.253.245.117", component = "1", port = "10003", foundation = "4", generation = "0", priority = "2113932031", network = "0" }):up()
                :tag("candidate", { ["rel-port"] = "4443", type = "srflx", protocol = "ssltcp", id = "ab0016bc23684f534c2df63d76c9c28b0746a7a79", ip = "2001:4800:7818:101:be76:4eff:fe05:69a4", component = "1", port = "443", foundation = "11", generation = "0", network = "0", priority = "1677732095", ["rel-addr"] = "2001:4800:7818:101:be76:4eff:fe05:69a4" }):up()
                :tag("candidate", { ["rel-port"] = "4443", type = "srflx", protocol = "ssltcp", id = "ab0016bc23684f534c2df63d76c9c28b07a8ed9a4", ip = "192.168.6.36", component = "1", port = "443", foundation = "9", generation = "0", network = "0", priority = "1677724415", ["rel-addr"] = "192.168.6.36" }):up()
                :tag("candidate", { ["rel-port"] = "4443", type = "srflx", protocol = "ssltcp", id = "ab0016bc23684f534c2df63d76c9c28b03872dcd8", ip = "10.208.225.101", component = "1", port = "443", foundation = "10", generation = "0", network = "0", priority = "1677724415", ["rel-addr"] = "10.208.225.101" }):up()
                :tag("candidate", { ["rel-port"] = "4443", type = "srflx", protocol = "ssltcp", id = "ab0016bc23684f534c2df63d76c9c28b07d0105db", ip = "23.253.245.117", component = "1", port = "443", foundation = "12", generation = "0", network = "0", priority = "1677724415", ["rel-addr"] = "23.253.245.117" }):up():up():up()
        :tag("content", { senders = "both", creator = "initiator", name = "video" })
            :tag("description", { media = "video", xmlns = "urn:xmpp:jingle:apps:rtp:1" })
                :tag("payload-type", { id = "100", name = "VP8", clockrate = "90000" })
                    :tag("rtcp-fb", { type = "ccm", subtype = "fir", xmlns = "urn:xmpp:jingle:apps:rtp:rtcp-fb:0" }):up()
                    :tag("rtcp-fb", { type = "nack", xmlns = "urn:xmpp:jingle:apps:rtp:rtcp-fb:0" }):up()
                    :tag("rtcp-fb", { type = "goog-remb", xmlns = "urn:xmpp:jingle:apps:rtp:rtcp-fb:0" }):up():up()
                :tag("payload-type", { id = "116", name = "red", clockrate = "90000" }):up()
                :tag("rtp-hdrext", { id = "2", uri = "urn:ietf:params:rtp-hdrext:toffset", xmlns = "urn:xmpp:jingle:apps:rtp:rtp-hdrext:0" }):up()
                :tag("rtp-hdrext", { id = "3", uri = "http://www.webrtc.org/experiments/rtp-hdrext/abs-send-time", xmlns = "urn:xmpp:jingle:apps:rtp:rtp-hdrext:0" }):up()
                :tag("rtcp-mux"):up():up()
            :tag("transport", { ufrag = "1v8rh1945k1u2j", pwd = "5vih74ib4bt6rftogeeo28usmc", xmlns = "urn:xmpp:jingle:transports:ice-udp:1" })
                :tag("rtcp-mux"):up()
                :tag("fingerprint", { hash = "sha-1", setup = "actpass", xmlns = "urn:xmpp:jingle:apps:dtls:0" }):text("CA:71:53:79:00:5A:AF:15:42:18:26:AB:AC:23:CC:BC:8F:E0:CE:38"):up()
                :tag("candidate", { type = "host", protocol = "udp", id = "ab0016bc23684f534c2df63d76c9c28b03803709a", ip = "192.168.6.36", component = "1", port = "10003", foundation = "1", generation = "0", priority = "2130706431", network = "0" }):up()
                :tag("candidate", { type = "host", protocol = "udp", id = "ab0016bc23684f534c2df63d76c9c28b069d5ab30", ip = "10.208.225.101", component = "1", port = "10003", foundation = "2", generation = "0", priority = "2130706431", network = "0" }):up()
                :tag("candidate", { type = "host", protocol = "udp", id = "ab0016bc23684f534c2df63d76c9c28b04ada1298", ip = "2001:4800:7818:101:be76:4eff:fe05:69a4", component = "1", port = "10003", foundation = "3", generation = "0", priority = "2113939711", network = "0"
 }):up()
                :tag("candidate", { type = "host", protocol = "udp", id = "ab0016bc23684f534c2df63d76c9c28b032fadf8c", ip = "23.253.245.117", component = "1", port = "10003", foundation = "4", generation = "0", priority = "2113932031", network = "0"
 }):up()
                :tag("candidate", { ["rel-port"] = "4443", type = "srflx", protocol = "ssltcp", id = "ab0016bc23684f534c2df63d76c9c28b0746a7a79", ip = "2001:4800:7818:101:be76:4eff:fe05:69a4", component = "1", port = "443", foundation = "11", generation = "0", network = "0", priority = "1677732095", ["rel-addr"] = "2001:4800:7818:101:be76:4eff:fe05:69a4"
 }):up()
                :tag("candidate", { ["rel-port"] = "4443", type = "srflx", protocol = "ssltcp", id = "ab0016bc23684f534c2df63d76c9c28b07a8ed9a4", ip = "192.168.6.36", component = "1", port = "443", foundation = "9", generation = "0", network = "0", priority = "1677724415", ["rel-addr"] = "192.168.6.36"
 }):up()
                :tag("candidate", { ["rel-port"] = "4443", type = "srflx", protocol = "ssltcp", id = "ab0016bc23684f534c2df63d76c9c28b03872dcd8", ip = "10.208.225.101", component = "1", port = "443", foundation = "10", generation = "0", network = "0", priority = "1677724415", ["rel-addr"] = "10.208.225.101"
 }):up()
                :tag("candidate", { ["rel-port"] = "4443", type = "srflx", protocol = "ssltcp", id = "ab0016bc23684f534c2df63d76c9c28b07d0105db", ip = "23.253.245.117", component = "1", port = "443", foundation = "12", generation = "0", network = "0", priority = "1677724415", ["rel-addr"] = "23.253.245.117"
 }):up():up():up()
        :tag("content", { senders = "both", creator = "initiator", name = "data" })
            :tag("description", { xmlns = "http://talky.io/ns/datachannel" }):up()
            :tag("transport", { pwd = "5vih74ib4bt6rftogeeo28usmc", ufrag = "1v8rh1945k1u2j", xmlns = "urn:xmpp:jingle:transports:ice-udp:1" })
                :tag("rtcp-mux"):up()
                :tag("fingerprint", { hash = "sha-1", setup = "actpass", xmlns = "urn:xmpp:jingle:apps:dtls:0" }):text("CA:71:53:79:00:5A:AF:15:42:18:26:AB:AC:23:CC:BC:8F:E0:CE:38"):up()
                :tag("candidate", { type = "host", protocol = "udp", id = "ab0016bc23684f534c2df63d76c9c28b03803709a", ip = "192.168.6.36", component = "1", port = "10003", foundation = "1", generation = "0", priority = "2130706431", network = "0"
 }):up()
                :tag("candidate", { type = "host", protocol = "udp", id = "ab0016bc23684f534c2df63d76c9c28b069d5ab30", ip = "10.208.225.101", component = "1", port = "10003", foundation = "2", generation = "0", priority = "2130706431", network = "0"
 }):up()
                :tag("candidate", { type = "host", protocol = "udp", id = "ab0016bc23684f534c2df63d76c9c28b04ada1298", ip = "2001:4800:7818:101:be76:4eff:fe05:69a4", component = "1", port = "10003", foundation = "3", generation = "0", priority = "2113939711", network = "0"
 }):up()
                :tag("candidate", { type = "host", protocol = "udp", id = "ab0016bc23684f534c2df63d76c9c28b032fadf8c", ip = "23.253.245.117", component = "1", port = "10003", foundation = "4", generation = "0", priority = "2113932031", network = "0"
 }):up()
                :tag("candidate", { ["rel-port"] = "4443", type = "srflx", protocol = "ssltcp", id = "ab0016bc23684f534c2df63d76c9c28b0746a7a79", ip = "2001:4800:7818:101:be76:4eff:fe05:69a4", component = "1", port = "443", foundation = "11", generation = "0", network = "0", priority = "1677732095", ["rel-addr"] = "2001:4800:7818:101:be76:4eff:fe05:69a4"
 }):up()
                :tag("candidate", { ["rel-port"] = "4443", type = "srflx", protocol = "ssltcp", id = "ab0016bc23684f534c2df63d76c9c28b07a8ed9a4", ip = "192.168.6.36", component = "1", port = "443", foundation = "9", generation = "0", network = "0", priority = "1677724415", ["rel-addr"] = "192.168.6.36"
 }):up()
                :tag("candidate", { ["rel-port"] = "4443", type = "srflx", protocol = "ssltcp", id = "ab0016bc23684f534c2df63d76c9c28b03872dcd8", ip = "10.208.225.101", component = "1", port = "443", foundation = "10", generation = "0", network = "0", priority = "1677724415", ["rel-addr"] = "10.208.225.101"
 }):up()
                :tag("candidate", { ["rel-port"] = "4443", type = "srflx", protocol = "ssltcp", id = "ab0016bc23684f534c2df63d76c9c28b07d0105db", ip = "23.253.245.117", component = "1", port = "443", foundation = "12", generation = "0", network = "0", priority = "1677724415", ["rel-addr"] = "23.253.245.117"
 }):up()
                :tag("sctpmap", { number = "5000", streams = "1024", protocol = "webrtc-datachannel", xmlns = "urn:xmpp:jingle:transports:dtls-sctp:1" }):up():up():up()
        :tag("group", { semantics = "BUNDLE", xmlns = "urn:xmpp:jingle:apps:grouping:0" })
            :tag("content", { name = "audio" }):up()
            :tag("content", { name = "video" }):up()
            :tag("content", { name = "data" }):up():up():up():up()
end

