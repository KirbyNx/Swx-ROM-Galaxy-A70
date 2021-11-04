.class Lcom/android/server/ipm/chimera/ChimeraAppClassifier$1;
.super Ljava/util/ArrayList;
.source "ChimeraAppClassifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/chimera/ChimeraAppClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    const-string v0, "com.samsung.cmh"

    invoke-virtual {p0, v0}, Lcom/android/server/ipm/chimera/ChimeraAppClassifier$1;->add(Ljava/lang/Object;)Z

    .line 53
    const-string v0, "android.process.acore"

    invoke-virtual {p0, v0}, Lcom/android/server/ipm/chimera/ChimeraAppClassifier$1;->add(Ljava/lang/Object;)Z

    .line 54
    const-string v0, "com.android.providers.blockednumber"

    invoke-virtual {p0, v0}, Lcom/android/server/ipm/chimera/ChimeraAppClassifier$1;->add(Ljava/lang/Object;)Z

    .line 55
    const-string v0, "com.android.providers.userdictionary"

    invoke-virtual {p0, v0}, Lcom/android/server/ipm/chimera/ChimeraAppClassifier$1;->add(Ljava/lang/Object;)Z

    .line 56
    const-string v0, "com.android.providers.contacts"

    invoke-virtual {p0, v0}, Lcom/android/server/ipm/chimera/ChimeraAppClassifier$1;->add(Ljava/lang/Object;)Z

    .line 57
    const-string v0, "com.samsung.android.providers.contacts"

    invoke-virtual {p0, v0}, Lcom/android/server/ipm/chimera/ChimeraAppClassifier$1;->add(Ljava/lang/Object;)Z

    .line 58
    const-string v0, "com.android.calllogbackup"

    invoke-virtual {p0, v0}, Lcom/android/server/ipm/chimera/ChimeraAppClassifier$1;->add(Ljava/lang/Object;)Z

    .line 60
    const-string v0, "android.process.media"

    invoke-virtual {p0, v0}, Lcom/android/server/ipm/chimera/ChimeraAppClassifier$1;->add(Ljava/lang/Object;)Z

    .line 61
    const-string v0, "com.samsung.android.providers.media"

    invoke-virtual {p0, v0}, Lcom/android/server/ipm/chimera/ChimeraAppClassifier$1;->add(Ljava/lang/Object;)Z

    .line 62
    const-string v0, "com.android.providers.media"

    invoke-virtual {p0, v0}, Lcom/android/server/ipm/chimera/ChimeraAppClassifier$1;->add(Ljava/lang/Object;)Z

    .line 63
    const-string v0, "com.google.android.providers.media.module"

    invoke-virtual {p0, v0}, Lcom/android/server/ipm/chimera/ChimeraAppClassifier$1;->add(Ljava/lang/Object;)Z

    .line 64
    const-string v0, "com.android.providers.media.module"

    invoke-virtual {p0, v0}, Lcom/android/server/ipm/chimera/ChimeraAppClassifier$1;->add(Ljava/lang/Object;)Z

    .line 65
    const-string v0, "com.sec.android.app.fm"

    invoke-virtual {p0, v0}, Lcom/android/server/ipm/chimera/ChimeraAppClassifier$1;->add(Ljava/lang/Object;)Z

    .line 66
    const-string v0, "com.google.android.projection.gearhead"

    invoke-virtual {p0, v0}, Lcom/android/server/ipm/chimera/ChimeraAppClassifier$1;->add(Ljava/lang/Object;)Z

    .line 67
    const-string v0, "com.samsung.android.singletake.service"

    invoke-virtual {p0, v0}, Lcom/android/server/ipm/chimera/ChimeraAppClassifier$1;->add(Ljava/lang/Object;)Z

    .line 68
    const-string v0, "com.sec.android.app.shealth"

    invoke-virtual {p0, v0}, Lcom/android/server/ipm/chimera/ChimeraAppClassifier$1;->add(Ljava/lang/Object;)Z

    .line 71
    const-string v0, "com.baidu.map.location"

    invoke-virtual {p0, v0}, Lcom/android/server/ipm/chimera/ChimeraAppClassifier$1;->add(Ljava/lang/Object;)Z

    .line 72
    const-string v0, "com.amap.android.locations"

    invoke-virtual {p0, v0}, Lcom/android/server/ipm/chimera/ChimeraAppClassifier$1;->add(Ljava/lang/Object;)Z

    .line 73
    const-string v0, "com.tencent.android.location"

    invoke-virtual {p0, v0}, Lcom/android/server/ipm/chimera/ChimeraAppClassifier$1;->add(Ljava/lang/Object;)Z

    .line 74
    const-string v0, "com.sec.location.nsflp2"

    invoke-virtual {p0, v0}, Lcom/android/server/ipm/chimera/ChimeraAppClassifier$1;->add(Ljava/lang/Object;)Z

    .line 76
    const-string v0, "com.samsung.android.game.gos"

    invoke-virtual {p0, v0}, Lcom/android/server/ipm/chimera/ChimeraAppClassifier$1;->add(Ljava/lang/Object;)Z

    .line 77
    const-string v0, "com.samsung.android.game.gametools"

    invoke-virtual {p0, v0}, Lcom/android/server/ipm/chimera/ChimeraAppClassifier$1;->add(Ljava/lang/Object;)Z

    .line 80
    const-string v0, "com.teslamotors.tesla"

    invoke-virtual {p0, v0}, Lcom/android/server/ipm/chimera/ChimeraAppClassifier$1;->add(Ljava/lang/Object;)Z

    .line 83
    const-string v0, "com.sec.android.easyMover.Agent"

    invoke-virtual {p0, v0}, Lcom/android/server/ipm/chimera/ChimeraAppClassifier$1;->add(Ljava/lang/Object;)Z

    .line 86
    const-string v0, "com.dsi.ant.service.socket"

    invoke-virtual {p0, v0}, Lcom/android/server/ipm/chimera/ChimeraAppClassifier$1;->add(Ljava/lang/Object;)Z

    .line 87
    const-string v0, "com.dsi.ant.plugins.antplus"

    invoke-virtual {p0, v0}, Lcom/android/server/ipm/chimera/ChimeraAppClassifier$1;->add(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method
