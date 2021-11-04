.class Lcom/android/server/ipm/chimera/AppListBuilder$PreconditionCriteria;
.super Ljava/lang/Object;
.source "AppListBuilder.java"

# interfaces
.implements Lcom/android/server/ipm/chimera/AppListBuilder$RunningAppProcessInfoCriteria;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/chimera/AppListBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreconditionCriteria"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ipm/chimera/AppListBuilder$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/ipm/chimera/AppListBuilder$1;

    .line 207
    invoke-direct {p0}, Lcom/android/server/ipm/chimera/AppListBuilder$PreconditionCriteria;-><init>()V

    return-void
.end method


# virtual methods
.method public check(Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;)Z
    .registers 4
    .param p1, "processInfo"    # Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;

    .line 211
    iget-object v0, p1, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v0, v0

    if-lt v0, v1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1
.end method
