.class public final Lcom/android/server/notification/sec/runestone/RunestoneStateContract$API;
.super Ljava/lang/Object;
.source "RunestoneStateContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/sec/runestone/RunestoneStateContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "API"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEnabledState(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    if-eqz p0, :cond_25

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/notification/sec/runestone/RunestoneStateContract;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "getRubinState"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 36
    .local v0, "runestoneState":Landroid/os/Bundle;
    if-eqz v0, :cond_23

    .line 37
    const-string v1, "currentRubinState"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "enabledState":Ljava/lang/String;
    const-string v2, "OK"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 39
    const/4 v2, 0x1

    return v2

    .line 42
    .end local v1    # "enabledState":Ljava/lang/String;
    :cond_23
    const/4 v1, 0x0

    return v1

    .line 31
    .end local v0    # "runestoneState":Landroid/os/Bundle;
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
