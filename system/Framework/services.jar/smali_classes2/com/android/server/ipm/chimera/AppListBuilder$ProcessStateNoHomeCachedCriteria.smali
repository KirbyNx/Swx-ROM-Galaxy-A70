.class Lcom/android/server/ipm/chimera/AppListBuilder$ProcessStateNoHomeCachedCriteria;
.super Ljava/lang/Object;
.source "AppListBuilder.java"

# interfaces
.implements Lcom/android/server/ipm/chimera/AppListBuilder$RunningAppProcessInfoCriteria;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/chimera/AppListBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProcessStateNoHomeCachedCriteria"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check(Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;)Z
    .registers 4
    .param p1, "processInfo"    # Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;

    .line 227
    iget v0, p1, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_f

    iget v0, p1, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method
