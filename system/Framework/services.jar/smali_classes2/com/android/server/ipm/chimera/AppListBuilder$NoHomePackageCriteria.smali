.class Lcom/android/server/ipm/chimera/AppListBuilder$NoHomePackageCriteria;
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
    name = "NoHomePackageCriteria"
.end annotation


# instance fields
.field private final mHomePackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/ipm/chimera/SystemRepository;)V
    .registers 3
    .param p1, "systemRepository"    # Lcom/android/server/ipm/chimera/SystemRepository;

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    invoke-interface {p1}, Lcom/android/server/ipm/chimera/SystemRepository;->getCurrentHomePackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ipm/chimera/AppListBuilder$NoHomePackageCriteria;->mHomePackageName:Ljava/lang/String;

    .line 247
    return-void
.end method


# virtual methods
.method public check(Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;)Z
    .registers 5
    .param p1, "processInfo"    # Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;

    .line 251
    iget-object v0, p0, Lcom/android/server/ipm/chimera/AppListBuilder$NoHomePackageCriteria;->mHomePackageName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    iget-object v2, p1, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    :cond_f
    const/4 v1, 0x1

    :cond_10
    return v1
.end method
