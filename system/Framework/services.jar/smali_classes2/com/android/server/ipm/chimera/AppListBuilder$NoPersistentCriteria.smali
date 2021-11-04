.class Lcom/android/server/ipm/chimera/AppListBuilder$NoPersistentCriteria;
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
    name = "NoPersistentCriteria"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check(Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;)Z
    .registers 4
    .param p1, "processInfo"    # Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;

    .line 219
    iget v0, p1, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method
