.class Lcom/android/server/enterprise/EnterpriseServiceConstants$1;
.super Ljava/util/HashMap;
.source "EnterpriseServiceConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/EnterpriseServiceConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 33
    const-string v0, "com.android.settings"

    const-string/jumbo v1, "root"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/EnterpriseServiceConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v0, "com.android.settings.intelligence"

    const-string v1, "basic"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/EnterpriseServiceConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v0, "com.samsung.accessibility"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/EnterpriseServiceConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v0, "com.samsung.android.honeyboard"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/EnterpriseServiceConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v0, "com.samsung.android.server.wifi.mobilewips.client"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/EnterpriseServiceConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v0, "com.samsung.android.server.wifi.mobilewips"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/EnterpriseServiceConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v0, "com.sec.android.inputmethod"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/EnterpriseServiceConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v0, "com.samsung.android.app.telephonyui"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/EnterpriseServiceConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v0, "com.samsung.android.app.smartcapture"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/EnterpriseServiceConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v0, "com.android.systemui"

    const-string v1, "dynamic"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/EnterpriseServiceConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v0, "com.samsung.android.SettingsReceiver"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/EnterpriseServiceConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v0, "com.samsung.desktopsystemui"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/EnterpriseServiceConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v0, "com.sec.android.app.desktoplauncher"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/EnterpriseServiceConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v0, "com.sec.android.app.dexonpc"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/EnterpriseServiceConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v0, "com.sec.android.app.launcher"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/EnterpriseServiceConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v0, "com.sec.android.desktopcommunity"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/EnterpriseServiceConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v0, "com.sec.android.desktopmode.uiservice"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/EnterpriseServiceConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v0, "com.android.settings.feedback"

    const-string v1, "feedback"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/EnterpriseServiceConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v0, "com.samsung.android.app.telephonyui.feedback"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/EnterpriseServiceConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v0, "com.samsung.android.SettingsReceiver.feedback"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/EnterpriseServiceConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v0, "com.samsung.desktopsystemui.feedback"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/EnterpriseServiceConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v0, "com.sec.android.app.desktoplauncher.feedback"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/EnterpriseServiceConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v0, "com.sec.android.app.launcher.feedback"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/EnterpriseServiceConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v0, "com.sec.android.desktopmode.uiservice.feedback"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/EnterpriseServiceConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void
.end method
