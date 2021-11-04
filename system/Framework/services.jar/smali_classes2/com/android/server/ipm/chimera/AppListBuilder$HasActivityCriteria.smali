.class Lcom/android/server/ipm/chimera/AppListBuilder$HasActivityCriteria;
.super Ljava/lang/Object;
.source "AppListBuilder.java"

# interfaces
.implements Lcom/android/server/ipm/chimera/AppListBuilder$ChimeraAppInfoCriteria;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/chimera/AppListBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HasActivityCriteria"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check(Lcom/android/server/ipm/chimera/ChimeraAppInfo;)Z
    .registers 4
    .param p1, "chimeraAppInfo"    # Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    .line 259
    iget v0, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->appType:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method
