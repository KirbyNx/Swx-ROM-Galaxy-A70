.class Lcom/android/server/ipm/chimera/SettingRepositoryDefault;
.super Ljava/lang/Object;
.source "SettingRepositoryDefault.java"

# interfaces
.implements Lcom/android/server/ipm/chimera/SettingRepository;


# instance fields
.field private mIsConservativeMode:Z

.field private mIsDynamicTargetFreeEnabled:Z

.field private mIsGcEnable:Z

.field private mIsReclaimPageCacheEnable:Z

.field mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;


# direct methods
.method constructor <init>(Lcom/android/server/ipm/chimera/SystemRepository;)V
    .registers 4
    .param p1, "systemRepository"    # Lcom/android/server/ipm/chimera/SystemRepository;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ipm/chimera/SettingRepositoryDefault;->mIsReclaimPageCacheEnable:Z

    .line 17
    iput-boolean v0, p0, Lcom/android/server/ipm/chimera/SettingRepositoryDefault;->mIsGcEnable:Z

    .line 8
    iput-object p1, p0, Lcom/android/server/ipm/chimera/SettingRepositoryDefault;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    .line 10
    const-string/jumbo v0, "ro.slmk.use_bg_keeping_policy"

    const-string v1, "false"

    invoke-interface {p1, v0, v1}, Lcom/android/server/ipm/chimera/SystemRepository;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ipm/chimera/SettingRepositoryDefault;->mIsConservativeMode:Z

    .line 11
    return-void
.end method


# virtual methods
.method public enableConservativeMode(Z)V
    .registers 2
    .param p1, "isConservativeMode"    # Z

    .line 36
    iput-boolean p1, p0, Lcom/android/server/ipm/chimera/SettingRepositoryDefault;->mIsConservativeMode:Z

    .line 37
    return-void
.end method

.method public enableDynamicTargetFree(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 26
    iput-boolean p1, p0, Lcom/android/server/ipm/chimera/SettingRepositoryDefault;->mIsDynamicTargetFreeEnabled:Z

    .line 27
    return-void
.end method

.method public enableGc(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 56
    iput-boolean p1, p0, Lcom/android/server/ipm/chimera/SettingRepositoryDefault;->mIsGcEnable:Z

    .line 57
    return-void
.end method

.method public enableReclaimPageCache(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 46
    iput-boolean p1, p0, Lcom/android/server/ipm/chimera/SettingRepositoryDefault;->mIsReclaimPageCacheEnable:Z

    .line 47
    return-void
.end method

.method public isConservativeMode()Z
    .registers 2

    .line 31
    iget-boolean v0, p0, Lcom/android/server/ipm/chimera/SettingRepositoryDefault;->mIsConservativeMode:Z

    return v0
.end method

.method public isDynamicTargetFreeEnabled()Z
    .registers 2

    .line 21
    iget-boolean v0, p0, Lcom/android/server/ipm/chimera/SettingRepositoryDefault;->mIsDynamicTargetFreeEnabled:Z

    return v0
.end method

.method public isGcEnabled()Z
    .registers 2

    .line 51
    iget-boolean v0, p0, Lcom/android/server/ipm/chimera/SettingRepositoryDefault;->mIsGcEnable:Z

    return v0
.end method

.method public isReclaimPageCacheEnabled()Z
    .registers 2

    .line 41
    iget-boolean v0, p0, Lcom/android/server/ipm/chimera/SettingRepositoryDefault;->mIsReclaimPageCacheEnable:Z

    return v0
.end method
