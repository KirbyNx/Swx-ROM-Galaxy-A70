.class Lcom/android/server/enterprise/EnterpriseServiceConstants$4;
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

    .line 84
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/EnterpriseServiceConstants$4;->add(Ljava/lang/Object;)Z

    .line 87
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/EnterpriseServiceConstants$4;->add(Ljava/lang/Object;)Z

    .line 88
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/EnterpriseServiceConstants$4;->add(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method
