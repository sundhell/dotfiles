# Author  : Corne Oppelaar
# Email   : hello@eaterofco.de
# License : GPL3

import weechat

weechat.register("fuzz", "EaterOfCode <hello@eaterofco.de>", "1.0", "GPL3", "'Fuzzy' matching buffer switch script", "", "")

def fuzz(data, buffer, args):
    infolist = weechat.infolist_get("buffer", "", "")
    if infolist:
        while weechat.infolist_next(infolist):
            name = weechat.infolist_string(infolist, "name")
            if args in name:
                weechat.command("", "/buffer " + str(weechat.infolist_integer(infolist, "number")));
                break;

        weechat.infolist_free(infolist)

    return weechat.WEECHAT_RC_OK

weechat.hook_command("fuzz", "Switch to buffer matched by fuzz", "[query]", "", "", "fuzz", "");


