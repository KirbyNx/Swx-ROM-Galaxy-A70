.class Lcom/android/server/enterprise/EnterpriseServiceConstants$2;
.super Ljava/util/ArrayList;
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
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    const-string v0, "com.samsung.android.knox.kpu"

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/EnterpriseServiceConstants$2;->add(Ljava/lang/Object;)Z

    .line 63
    const-string v0, "com.sec.enterprise.knox.cloudmdm.smdms"

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/EnterpriseServiceConstants$2;->add(Ljava/lang/Object;)Z

    .line 64
    const-string v0, "com.sec.knox.kccagent"

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/EnterpriseServiceConstants$2;->add(Ljava/lang/Object;)Z

    .line 65
    const-string v0, "com.samsung.android.knox.kpecore"

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/EnterpriseServiceConstants$2;->add(Ljava/lang/Object;)Z

    .line 66
    const-string v0, "com.samsung.android.app.smartscan"

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/EnterpriseServiceConstants$2;->add(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method
