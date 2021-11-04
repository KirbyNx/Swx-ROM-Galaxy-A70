.class Lcom/android/server/vr/XrSettings;
.super Ljava/lang/Object;
.source "XrSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vr/XrSettings$OnXrSettingsListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_GLOBAL_SXR_OOBE_COMPLETED:I = 0x0

.field public static final DEFAULT_GLOBAL_VR_DEVELOPER_MODE:I = 0x0

.field public static final DEFAULT_GLOBAL_VR_SETUPWIZARD_COMPLETED:I = 0x0

.field public static final OCULUS_SETUP_COMPLETED:I = 0x1

.field public static final OCULUS_UPDATE_REQUIRED:I = 0x2

.field public static final SETTINGS_GLOBAL_SXR_OOBE_COMPLETED:Ljava/lang/String; = "sxr_oobe_completed"

.field public static final SETTINGS_GLOBAL_VR_DEVELOPER_MODE:Ljava/lang/String; = "vrmode_developer_mode"

.field public static final SETTINGS_GLOBAL_VR_SETUPWIZARD_COMPLETED:Ljava/lang/String; = "vr_setupwizard_completed"

.field public static final SXR_OOBE_COMPLETED:I = 0x1

.field public static final SXR_UPDATE_REQUIRED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "XrSettings"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDeveloperMode:I

.field private mDeviceProvisoned:I

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mObserver:Landroid/database/ContentObserver;

.field private mOnXrSettingsListener:Lcom/android/server/vr/XrSettings$OnXrSettingsListener;

.field private mSXROOBEComplete:I

.field private mSetupWizardComplete:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Object;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "lock"    # Ljava/lang/Object;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/vr/XrSettings;->mSetupWizardComplete:I

    .line 47
    iput v0, p0, Lcom/android/server/vr/XrSettings;->mSXROOBEComplete:I

    .line 48
    iput v0, p0, Lcom/android/server/vr/XrSettings;->mDeveloperMode:I

    .line 49
    iput v0, p0, Lcom/android/server/vr/XrSettings;->mDeviceProvisoned:I

    .line 53
    iput-object p1, p0, Lcom/android/server/vr/XrSettings;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/android/server/vr/XrSettings;->mHandler:Landroid/os/Handler;

    .line 55
    iput-object p3, p0, Lcom/android/server/vr/XrSettings;->mLock:Ljava/lang/Object;

    .line 56
    new-instance v0, Lcom/android/server/vr/XrSettings$1;

    iget-object v1, p0, Lcom/android/server/vr/XrSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/vr/XrSettings$1;-><init>(Lcom/android/server/vr/XrSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/vr/XrSettings;->mObserver:Landroid/database/ContentObserver;

    .line 66
    iget-object v0, p0, Lcom/android/server/vr/XrSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "vr_setupwizard_completed"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vr/XrSettings;->mObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 67
    iget-object v0, p0, Lcom/android/server/vr/XrSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sxr_oobe_completed"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vr/XrSettings;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 68
    iget-object v0, p0, Lcom/android/server/vr/XrSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "vrmode_developer_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vr/XrSettings;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 69
    iget-object v0, p0, Lcom/android/server/vr/XrSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vr/XrSettings;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/vr/XrSettings;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/XrSettings;

    .line 12
    iget-object v0, p0, Lcom/android/server/vr/XrSettings;->mLock:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 107
    const-string v0, "XrSettings:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mDeviceProvisoned="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vr/XrSettings;->mDeviceProvisoned:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mSetupWizardComplete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vr/XrSettings;->mSetupWizardComplete:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mDeveloperMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vr/XrSettings;->mDeveloperMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public getSXROOBEComplete()I
    .registers 2

    .line 97
    iget v0, p0, Lcom/android/server/vr/XrSettings;->mSXROOBEComplete:I

    return v0
.end method

.method public getSetupWizardComplete()I
    .registers 2

    .line 93
    iget v0, p0, Lcom/android/server/vr/XrSettings;->mSetupWizardComplete:I

    return v0
.end method

.method public isDeveloperMode()Z
    .registers 2

    .line 89
    iget v0, p0, Lcom/android/server/vr/XrSettings;->mDeveloperMode:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isDeviceProvisoned()Z
    .registers 2

    .line 85
    iget v0, p0, Lcom/android/server/vr/XrSettings;->mDeviceProvisoned:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public setXrSettingsListener(Lcom/android/server/vr/XrSettings$OnXrSettingsListener;)V
    .registers 2
    .param p1, "onXrSettingsListener"    # Lcom/android/server/vr/XrSettings$OnXrSettingsListener;

    .line 81
    iput-object p1, p0, Lcom/android/server/vr/XrSettings;->mOnXrSettingsListener:Lcom/android/server/vr/XrSettings$OnXrSettingsListener;

    .line 82
    return-void
.end method

.method updateSettingsLocked()V
    .registers 4

    .line 73
    iget-object v0, p0, Lcom/android/server/vr/XrSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "vr_setupwizard_completed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/vr/XrSettings;->mSetupWizardComplete:I

    .line 74
    iget-object v0, p0, Lcom/android/server/vr/XrSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sxr_oobe_completed"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/vr/XrSettings;->mSXROOBEComplete:I

    .line 75
    iget-object v0, p0, Lcom/android/server/vr/XrSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "vrmode_developer_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/vr/XrSettings;->mDeveloperMode:I

    .line 76
    iget-object v0, p0, Lcom/android/server/vr/XrSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/vr/XrSettings;->mDeviceProvisoned:I

    .line 77
    iget-object v0, p0, Lcom/android/server/vr/XrSettings;->mOnXrSettingsListener:Lcom/android/server/vr/XrSettings$OnXrSettingsListener;

    invoke-interface {v0}, Lcom/android/server/vr/XrSettings$OnXrSettingsListener;->onXrSettingsChanged()V

    .line 78
    return-void
.end method
