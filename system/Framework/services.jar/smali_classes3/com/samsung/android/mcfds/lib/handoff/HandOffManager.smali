.class public Lcom/samsung/android/mcfds/lib/handoff/HandOffManager;
.super Lcom/samsung/android/mcfds/lib/common/AbstractManager;
.source "HandOffManager.java"


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;)V
    .registers 3
    .param p1, "coreInterface"    # Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;

    .line 10
    const-string v0, "[MCF_DS_LIB]_HandOffManager"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/mcfds/lib/common/AbstractManager;-><init>(Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;Ljava/lang/String;)V

    .line 11
    return-void
.end method


# virtual methods
.method public start()V
    .registers 1

    .line 16
    return-void
.end method

.method public stop()V
    .registers 1

    .line 21
    return-void
.end method
