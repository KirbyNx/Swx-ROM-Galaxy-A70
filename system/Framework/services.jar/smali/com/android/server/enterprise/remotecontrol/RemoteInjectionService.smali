.class public Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;
.super Lcom/samsung/android/knox/remotecontrol/IRemoteInjection$Stub;
.source "RemoteInjectionService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$LocalService;,
        Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;
    }
.end annotation


# static fields
.field public static final KNOX_REMOTE_SCREEN_SESSION_OWNER_UID_DEFAULT:I = -0x1

.field static final TAG:Ljava/lang/String; = "RemoteInjection"

.field private static mSelf:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;


# instance fields
.field final mContext:Landroid/content/Context;

.field private mCurrentDisplayHeight:I

.field private mCurrentDisplayWidth:I

.field private mDexScreenHeight:I

.field private mDexScreenWidth:I

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field final mInjector:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;

.field private mKnoxRemoteScreenSessionOwnerUid:I

.field mRemoteControlDisabled:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteScreenHeight:I

.field private mRemoteScreenWidth:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 133
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mSelf:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 159
    new-instance v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;-><init>(Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;)V

    .line 160
    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;)V
    .registers 6
    .param p1, "injector"    # Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;

    .line 162
    invoke-direct {p0}, Lcom/samsung/android/knox/remotecontrol/IRemoteInjection$Stub;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 122
    iput-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 131
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteControlDisabled:Landroid/util/SparseArray;

    .line 136
    iput-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mWindowManager:Landroid/view/WindowManager;

    .line 163
    iget-object v1, p1, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mContext:Landroid/content/Context;

    .line 164
    iput-object p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mInjector:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;

    .line 165
    invoke-direct {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 166
    .local v1, "display":Landroid/view/Display;
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->updateCurrentDisplayDimensions(I)V

    .line 167
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isInPortrait(Landroid/view/Display;)Z

    move-result v3

    if-eqz v3, :cond_2c

    iget v3, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayWidth:I

    goto :goto_2e

    :cond_2c
    iget v3, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayHeight:I

    :goto_2e
    iput v3, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWidth:I

    .line 168
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isInPortrait(Landroid/view/Display;)Z

    move-result v3

    if-eqz v3, :cond_39

    iget v3, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayHeight:I

    goto :goto_3b

    :cond_39
    iget v3, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayWidth:I

    :goto_3b
    iput v3, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenHeight:I

    .line 169
    invoke-virtual {p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;->getEDMStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 170
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->updateKnoxRemoteScreenSessionUid(I)V

    .line 171
    sput-object p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mSelf:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    .line 174
    iput v2, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mDexScreenWidth:I

    .line 175
    iput v2, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mDexScreenHeight:I

    .line 176
    const-class v2, Lcom/samsung/android/knox/localservice/RemoteInjectionInternal;

    new-instance v3, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$LocalService;

    invoke-direct {v3, p0, v0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$LocalService;-><init>(Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$1;)V

    invoke-static {v2, v3}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 177
    return-void
.end method

.method private enforceRemoteControlPermission(Lcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/ContextInfo;
    .registers 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "isPremiumCall"    # Z

    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_1c

    .line 198
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    .line 200
    invoke-direct {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceDoPoOnlyPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v1

    return-object v1

    .line 202
    :cond_1c
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_REMOTE_CONTROL"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    .line 204
    invoke-direct {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v1

    return-object v1
.end method

.method private enforceRemoteControlPermissionNoActiveAdmin()V
    .registers 4

    .line 209
    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/common/EnterprisePermissionChecker;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_REMOTE_CONTROL"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 210
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 209
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->enforceCallingOrSelfPermissions(Ljava/util/List;Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method private enforceRemoteDexPermissionNoActiveAdmin()V
    .registers 4

    .line 216
    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/common/EnterprisePermissionChecker;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 217
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 216
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->enforceCallingOrSelfPermissions(Ljava/util/List;Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method private enforceSystemUser()V
    .registers 3

    .line 224
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 227
    return-void

    .line 225
    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by system user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getDisplay(Z)Landroid/view/Display;
    .registers 4
    .param p1, "isDex"    # Z

    .line 890
    if-eqz p1, :cond_12

    .line 891
    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 892
    .local v0, "dm":Landroid/hardware/display/DisplayManager;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    return-object v1

    .line 894
    .end local v0    # "dm":Landroid/hardware/display/DisplayManager;
    :cond_12
    invoke-direct {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 189
    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 190
    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mInjector:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;

    invoke-virtual {v0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;->getEnterpriseDeviceManager()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 192
    :cond_c
    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method public static getInstance()Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;
    .registers 1

    .line 185
    sget-object v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mSelf:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    return-object v0
.end method

.method private getRemoteHeight(Landroid/view/Display;)F
    .registers 5
    .param p1, "display"    # Landroid/view/Display;

    .line 736
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isInPortrait(Landroid/view/Display;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenHeight:I

    goto :goto_b

    :cond_9
    iget v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWidth:I

    :goto_b
    int-to-float v0, v0

    .line 737
    .local v0, "remoteHeight":F
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getRemoteHeight() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteInjection"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    return v0
.end method

.method private getRemoteHeightForDex(Landroid/view/Display;)F
    .registers 5
    .param p1, "display"    # Landroid/view/Display;

    .line 743
    iget v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mDexScreenWidth:I

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mDexScreenHeight:I

    if-nez v0, :cond_9

    goto :goto_16

    .line 746
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isInPortrait(Landroid/view/Display;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mDexScreenHeight:I

    goto :goto_14

    :cond_12
    iget v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mDexScreenWidth:I

    :goto_14
    int-to-float v0, v0

    .local v0, "remoteHeight":F
    goto :goto_22

    .line 744
    .end local v0    # "remoteHeight":F
    :cond_16
    :goto_16
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isInPortrait(Landroid/view/Display;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayHeight:I

    goto :goto_21

    :cond_1f
    iget v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayWidth:I

    :goto_21
    int-to-float v0, v0

    .line 748
    .restart local v0    # "remoteHeight":F
    :goto_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getRemoteHeightForDex() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteInjection"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    return v0
.end method

.method private getRemoteWidth(Landroid/view/Display;)F
    .registers 5
    .param p1, "display"    # Landroid/view/Display;

    .line 719
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isInPortrait(Landroid/view/Display;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWidth:I

    goto :goto_b

    :cond_9
    iget v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenHeight:I

    :goto_b
    int-to-float v0, v0

    .line 720
    .local v0, "remoteWidth":F
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getRemoteWidth() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteInjection"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    return v0
.end method

.method private getRemoteWidthForDex(Landroid/view/Display;)F
    .registers 5
    .param p1, "display"    # Landroid/view/Display;

    .line 726
    iget v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mDexScreenWidth:I

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mDexScreenHeight:I

    if-nez v0, :cond_9

    goto :goto_16

    .line 729
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isInPortrait(Landroid/view/Display;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mDexScreenWidth:I

    goto :goto_14

    :cond_12
    iget v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mDexScreenHeight:I

    :goto_14
    int-to-float v0, v0

    .local v0, "remoteWidth":F
    goto :goto_22

    .line 727
    .end local v0    # "remoteWidth":F
    :cond_16
    :goto_16
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isInPortrait(Landroid/view/Display;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayWidth:I

    goto :goto_21

    :cond_1f
    iget v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayHeight:I

    :goto_21
    int-to-float v0, v0

    .line 731
    .restart local v0    # "remoteWidth":F
    :goto_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getRemoteWidthForDex() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteInjection"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    return v0
.end method

.method private getWindowManager()Landroid/view/WindowManager;
    .registers 2

    .line 668
    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_d

    .line 669
    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mInjector:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;

    invoke-virtual {v0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mWindowManager:Landroid/view/WindowManager;

    return-object v0

    .line 671
    :cond_d
    return-object v0
.end method

.method private injectInputManagerKeyEvent(Landroid/view/KeyEvent;Z)Z
    .registers 5
    .param p1, "ev"    # Landroid/view/KeyEvent;
    .param p2, "sync"    # Z

    .line 656
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    .line 657
    if-eqz p2, :cond_8

    const/4 v1, 0x2

    goto :goto_9

    .line 658
    :cond_8
    const/4 v1, 0x1

    .line 656
    :goto_9
    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v0

    return v0
.end method

.method private injectInputManagerMotionEvent(Landroid/view/MotionEvent;Z)Z
    .registers 5
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "sync"    # Z

    .line 662
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    .line 663
    if-eqz p2, :cond_8

    const/4 v1, 0x2

    goto :goto_9

    .line 664
    :cond_8
    const/4 v1, 0x1

    .line 662
    :goto_9
    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v0

    return v0
.end method

.method private injectKeyEventInternal(Landroid/view/KeyEvent;Z)Z
    .registers 31
    .param p1, "ev"    # Landroid/view/KeyEvent;
    .param p2, "sync"    # Z

    .line 608
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    .line 609
    .local v0, "downTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    .line 611
    .local v2, "eventTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v18

    .line 612
    .local v18, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v19

    .line 613
    .local v19, "code":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v20

    .line 614
    .local v20, "repeatCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v21

    .line 615
    .local v21, "metaState":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v22

    .line 616
    .local v22, "deviceId":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v23

    .line 617
    .local v23, "scancode":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v4

    .line 618
    .local v4, "source":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v24

    .line 619
    .local v24, "flags":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v25

    .line 621
    .local v25, "displayId":I
    if-nez v4, :cond_33

    .line 622
    const/16 v4, 0x101

    move/from16 v26, v4

    goto :goto_35

    .line 621
    :cond_33
    move/from16 v26, v4

    .line 625
    .end local v4    # "source":I
    .local v26, "source":I
    :goto_35
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_3f

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 626
    :cond_3f
    cmp-long v4, v0, v4

    if-nez v4, :cond_44

    move-wide v0, v2

    .line 628
    :cond_44
    new-instance v27, Landroid/view/KeyEvent;

    or-int/lit8 v15, v24, 0x8

    move-object/from16 v4, v27

    move-wide v5, v0

    move-wide v7, v2

    move/from16 v9, v18

    move/from16 v10, v19

    move/from16 v11, v20

    move/from16 v12, v21

    move/from16 v13, v22

    move/from16 v14, v23

    move/from16 v16, v26

    move/from16 v17, v25

    invoke-direct/range {v4 .. v17}, Landroid/view/KeyEvent;-><init>(JJIIIIIIIII)V

    .line 630
    .local v4, "newEvent":Landroid/view/KeyEvent;
    move-object/from16 v5, p0

    move/from16 v6, p2

    invoke-direct {v5, v4, v6}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->injectInputManagerKeyEvent(Landroid/view/KeyEvent;Z)Z

    move-result v7

    return v7
.end method

.method private injectPointerEventInternal(Landroid/view/MotionEvent;Z)Z
    .registers 5
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "sync"    # Z

    .line 634
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 635
    .local v0, "newEvent":Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_11

    .line 636
    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 638
    :cond_11
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->injectInputManagerMotionEvent(Landroid/view/MotionEvent;Z)Z

    move-result v1

    return v1
.end method

.method private injectPointerEventInternalDex(Landroid/view/MotionEvent;Z)Z
    .registers 5
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "sync"    # Z

    .line 642
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 643
    .local v0, "newEvent":Landroid/view/MotionEvent;
    const/16 v1, 0x3002

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 644
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->injectInputManagerMotionEvent(Landroid/view/MotionEvent;Z)Z

    move-result v1

    return v1
.end method

.method private injectTrackballEventInternal(Landroid/view/MotionEvent;Z)Z
    .registers 5
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "sync"    # Z

    .line 648
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 649
    .local v0, "newEvent":Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_12

    .line 650
    const v1, 0x10004

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 652
    :cond_12
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->injectInputManagerMotionEvent(Landroid/view/MotionEvent;Z)Z

    move-result v1

    return v1
.end method

.method private isDexDisplay(I)Z
    .registers 3
    .param p1, "displayId"    # I

    .line 914
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private isDexModeOn()Z
    .registers 2

    .line 910
    const/4 v0, 0x0

    return v0
.end method

.method private isInPortrait(Landroid/view/Display;)Z
    .registers 4
    .param p1, "display"    # Landroid/view/Display;

    .line 180
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 181
    .local v0, "orientation":I
    if-eqz v0, :cond_c

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    goto :goto_c

    :cond_a
    const/4 v1, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v1, 0x1

    :goto_d
    return v1
.end method

.method private isRemoteControlDisabledInternal(II)Z
    .registers 6
    .param p1, "userId"    # I
    .param p2, "callerUid"    # I

    .line 874
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 875
    .local v0, "callerUserId":I
    if-eqz v0, :cond_b

    if-ne p1, v0, :cond_9

    goto :goto_b

    .line 883
    :cond_9
    const/4 v1, 0x1

    return v1

    .line 876
    :cond_b
    :goto_b
    iget-object v1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteControlDisabled:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 877
    .local v1, "disabled":Ljava/lang/Boolean;
    if-nez v1, :cond_17

    .line 878
    const/4 v2, 0x0

    return v2

    .line 880
    :cond_17
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method private isRemoteInjectionDisabled(I)Z
    .registers 8
    .param p1, "callerUid"    # I

    .line 860
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 862
    .local v0, "token":J
    const/4 v2, 0x0

    :try_start_5
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    const/4 v4, 0x1

    .line 863
    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->getTasks(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 862
    invoke-direct {p0, v3, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlDisabledInternal(II)Z

    move-result v2
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1a} :catch_20
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1e

    .line 867
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 862
    return v2

    .line 867
    :catchall_1e
    move-exception v2

    goto :goto_2e

    .line 864
    :catch_20
    move-exception v3

    .line 865
    .local v3, "e":Ljava/lang/Exception;
    :try_start_21
    const-string v4, "RemoteInjection"

    const-string v5, "Failed to get top activity user id"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_1e

    .line 867
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 868
    nop

    .line 870
    return v2

    .line 867
    :goto_2e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 868
    throw v2
.end method

.method private isUsingKnoxRemoteScreen()Z
    .registers 3

    .line 798
    iget v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mKnoxRemoteScreenSessionOwnerUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private transformMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 29
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 676
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isDexModeOn()Z

    move-result v2

    .line 677
    .local v2, "isDexModeOn":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isDexDisplay(I)Z

    move-result v3

    .line 678
    .local v3, "isDexDisplay":Z
    if-eqz v2, :cond_16

    if-eqz v3, :cond_16

    const/4 v4, 0x1

    goto :goto_17

    :cond_16
    const/4 v4, 0x0

    .line 680
    .local v4, "needToHandleDex":Z
    :goto_17
    invoke-direct {v0, v4}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->getDisplay(Z)Landroid/view/Display;

    move-result-object v5

    .line 682
    .local v5, "display":Landroid/view/Display;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v6

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->updateCurrentDisplayDimensions(I)V

    .line 684
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    .line 685
    .local v6, "pointerCount":I
    new-array v14, v6, [Landroid/view/MotionEvent$PointerCoords;

    .line 686
    .local v14, "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    new-array v13, v6, [Landroid/view/MotionEvent$PointerProperties;

    .line 687
    .local v13, "pointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2b
    if-ge v7, v6, :cond_87

    .line 688
    new-instance v8, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v8}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v8, v14, v7

    .line 689
    new-instance v8, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v8}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v8, v13, v7

    .line 690
    aget-object v8, v14, v7

    invoke-virtual {v1, v7, v8}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 691
    aget-object v8, v13, v7

    invoke-virtual {v1, v7, v8}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 693
    if-nez v7, :cond_4e

    if-eqz v4, :cond_4e

    .line 694
    aget-object v8, v13, v7

    const/4 v9, 0x3

    iput v9, v8, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 696
    :cond_4e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isUsingKnoxRemoteScreen()Z

    move-result v8

    if-eqz v8, :cond_84

    .line 697
    if-eqz v4, :cond_5b

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->getRemoteWidthForDex(Landroid/view/Display;)F

    move-result v8

    goto :goto_5f

    :cond_5b
    invoke-direct {v0, v5}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->getRemoteWidth(Landroid/view/Display;)F

    move-result v8

    .line 698
    .local v8, "remoteWidth":F
    :goto_5f
    if-eqz v4, :cond_66

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->getRemoteHeightForDex(Landroid/view/Display;)F

    move-result v9

    goto :goto_6a

    :cond_66
    invoke-direct {v0, v5}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->getRemoteHeight(Landroid/view/Display;)F

    move-result v9

    .line 700
    .local v9, "remoteHeight":F
    :goto_6a
    aget-object v10, v14, v7

    aget-object v11, v14, v7

    iget v11, v11, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v12, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayWidth:I

    int-to-float v12, v12

    div-float/2addr v12, v8

    mul-float/2addr v11, v12

    iput v11, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 701
    aget-object v10, v14, v7

    aget-object v11, v14, v7

    iget v11, v11, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget v12, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayHeight:I

    int-to-float v12, v12

    div-float/2addr v12, v9

    mul-float/2addr v11, v12

    iput v11, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 687
    .end local v8    # "remoteWidth":F
    .end local v9    # "remoteHeight":F
    :cond_84
    add-int/lit8 v7, v7, 0x1

    goto :goto_2b

    .line 704
    .end local v7    # "i":I
    :cond_87
    const/4 v7, 0x0

    .line 705
    .local v7, "dId":I
    if-nez v3, :cond_91

    .line 706
    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    move-result v7

    move/from16 v24, v7

    goto :goto_99

    .line 707
    :cond_91
    if-eqz v2, :cond_97

    .line 708
    const/4 v7, 0x2

    move/from16 v24, v7

    goto :goto_99

    .line 707
    :cond_97
    move/from16 v24, v7

    .line 711
    .end local v7    # "dId":I
    .local v24, "dId":I
    :goto_99
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    .line 712
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v15

    .line 713
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v18

    .line 714
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v20

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v21

    .line 715
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v23

    .line 711
    move v12, v6

    move-object/from16 v25, v13

    .end local v13    # "pointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    .local v25, "pointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    move-object/from16 v26, v14

    .end local v14    # "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    .local v26, "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    move/from16 v22, v24

    invoke-static/range {v7 .. v23}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;

    move-result-object v7

    return-object v7
.end method

.method private updateCurrentDisplayDimensions(I)V
    .registers 7
    .param p1, "displayId"    # I

    .line 753
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isDexDisplay(I)Z

    move-result v0

    .line 754
    .local v0, "isDexDisplay":Z
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->getDisplay(Z)Landroid/view/Display;

    move-result-object v1

    .line 755
    .local v1, "display":Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 767
    .local v2, "size":Landroid/graphics/Point;
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 768
    iget v3, v2, Landroid/graphics/Point;->x:I

    iput v3, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayWidth:I

    .line 769
    iget v3, v2, Landroid/graphics/Point;->y:I

    iput v3, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayHeight:I

    .line 771
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mCurrentDisplayWidth : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mCurrentDisplayHeight : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RemoteInjection"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    return-void
.end method

.method private updateKnoxRemoteScreenSessionUid(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 794
    iput p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mKnoxRemoteScreenSessionOwnerUid:I

    .line 795
    return-void
.end method


# virtual methods
.method public allowRemoteControl(Lcom/samsung/android/knox/ContextInfo;ZZ)Z
    .registers 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "allow"    # Z
    .param p3, "isPremiumCall"    # Z

    .line 802
    const/4 v0, 0x0

    .line 803
    .local v0, "retVal":Z
    invoke-direct {p0, p1, p3}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->enforceRemoteControlPermission(Lcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 804
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 808
    .local v1, "callerUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 811
    .local v2, "token":J
    :try_start_b
    iget-object v4, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "allowRemoteControl"

    invoke-virtual {v4, v1, v5, v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    move v0, v4

    .line 814
    if-eqz v0, :cond_2e

    .line 815
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 816
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteControlDisabled:Landroid/util/SparseArray;

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlAllowed(I)Z

    move-result v6

    if-nez v6, :cond_26

    const/4 v6, 0x1

    goto :goto_27

    :cond_26
    const/4 v6, 0x0

    :goto_27
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2e} :catch_31
    .catchall {:try_start_b .. :try_end_2e} :catchall_2f

    .line 822
    .end local v4    # "userId":I
    :cond_2e
    goto :goto_3a

    :catchall_2f
    move-exception v4

    goto :goto_3f

    .line 819
    :catch_31
    move-exception v4

    .line 820
    .local v4, "e":Ljava/lang/Exception;
    :try_start_32
    const-string v5, "RemoteInjection"

    const-string v6, "RemoteInjection.allowRemoteControl() exception : "

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_2f

    .line 822
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    :goto_3a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 823
    nop

    .line 825
    return v0

    .line 822
    :goto_3f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 823
    throw v4
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 919
    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_10

    .line 921
    const-string v0, "Permission Denial: can\'t dump Enterprise Device Manager Service"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 922
    return-void

    .line 924
    :cond_10
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 925
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 926
    .local v1, "N":I
    const/4 v2, 0x0

    .line 927
    .local v2, "count":I
    const-string v3, "RemoteControl disallowed userId : "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 928
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_20
    if-ge v3, v1, :cond_38

    .line 929
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 930
    .local v4, "userHandle":I
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlAllowed(I)Z

    move-result v5

    if-nez v5, :cond_35

    .line 931
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 932
    add-int/lit8 v2, v2, 0x1

    .line 928
    .end local v4    # "userHandle":I
    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 935
    .end local v3    # "i":I
    :cond_38
    if-nez v2, :cond_3f

    .line 936
    const-string v3, "None"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 938
    :cond_3f
    return-void
.end method

.method public injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    .registers 16
    .param p1, "ev"    # Landroid/view/KeyEvent;
    .param p2, "sync"    # Z

    .line 251
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 252
    .local v0, "callerUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 254
    .local v8, "userId":I
    const/4 v9, 0x0

    if-nez p1, :cond_28

    .line 256
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 258
    .local v10, "token":J
    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 259
    :try_start_12
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string v5, "RemoteInjectionService"

    const-string v6, "Remotely injecting a keystroke event into the UI failed"

    .line 258
    move v7, v8

    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_23

    .line 263
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 264
    nop

    .line 266
    return v9

    .line 263
    :catchall_23
    move-exception v1

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 264
    throw v1

    .line 269
    .end local v10    # "token":J
    :cond_28
    invoke-direct {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->enforceRemoteControlPermissionNoActiveAdmin()V

    .line 271
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 273
    .restart local v10    # "token":J
    const/4 v12, 0x0

    .line 275
    .local v12, "ret":Z
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteInjectionDisabled(I)Z

    move-result v1

    const-string v2, "RemoteInjection"

    if-eqz v1, :cond_50

    .line 276
    const-string v1, "Remote Control is disabled, couldnt inject key event"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string v5, "RemoteInjectionService"

    const-string v6, "Remotely injecting a keystroke event into the UI failed"

    move v7, v8

    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 279
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 280
    return v12

    .line 283
    :cond_50
    invoke-virtual {p1, v9}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 285
    :try_start_53
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->injectKeyEventInternal(Landroid/view/KeyEvent;Z)Z

    move-result v1
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_57} :catch_59

    move v12, v1

    .line 288
    goto :goto_6e

    .line 286
    :catch_59
    move-exception v1

    .line 287
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error injecting key event : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_6e
    if-eqz v12, :cond_80

    .line 292
    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string v5, "RemoteInjectionService"

    const-string v6, "Remotely injecting a keystroke event into the UI succeeded"

    move v7, v8

    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_8f

    .line 295
    :cond_80
    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string v5, "RemoteInjectionService"

    const-string v6, "Remotely injecting a keystroke event into the UI failed"

    move v7, v8

    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 299
    :goto_8f
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 301
    return v12
.end method

.method public injectKeyEventDex(Landroid/view/KeyEvent;Z)Z
    .registers 16
    .param p1, "ev"    # Landroid/view/KeyEvent;
    .param p2, "sync"    # Z

    .line 499
    invoke-direct {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->enforceRemoteDexPermissionNoActiveAdmin()V

    .line 501
    invoke-direct {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isDexModeOn()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "RemoteInjection"

    if-nez v0, :cond_12

    .line 502
    const-string v0, "Dex Mode is not On, couldnt inject Key Event to Dex"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    return v1

    .line 506
    :cond_12
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 507
    .local v0, "callerUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 509
    .local v10, "userId":I
    if-nez p1, :cond_39

    .line 511
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 513
    .local v11, "token":J
    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 514
    :try_start_23
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v7, "RemoteInjectionService"

    const-string v8, "Remotely injecting a keystroke event into the UI failed"

    .line 513
    move v9, v10

    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_2f
    .catchall {:try_start_23 .. :try_end_2f} :catchall_34

    .line 518
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 519
    nop

    .line 521
    return v1

    .line 518
    :catchall_34
    move-exception v1

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 519
    throw v1

    .line 524
    .end local v11    # "token":J
    :cond_39
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 526
    .restart local v11    # "token":J
    const/4 v1, 0x0

    .line 528
    .local v1, "ret":Z
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteInjectionDisabled(I)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 529
    const-string v3, "Remote Control is disabled, couldnt inject key event"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v7, "RemoteInjectionService"

    const-string v8, "Remotely injecting a keystroke event into the UI failed"

    move v9, v10

    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 532
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 533
    return v1

    .line 536
    :cond_5c
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 538
    :try_start_60
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->injectKeyEventInternal(Landroid/view/KeyEvent;Z)Z

    move-result v2
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_64} :catch_66

    move v1, v2

    .line 541
    goto :goto_7b

    .line 539
    :catch_66
    move-exception v3

    .line 540
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error injecting key event in dex screen : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_7b
    if-eqz v1, :cond_8d

    .line 545
    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v7, "RemoteInjectionService"

    const-string v8, "Remotely injecting a keystroke event into the UI succeeded"

    move v9, v10

    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_9c

    .line 548
    :cond_8d
    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v7, "RemoteInjectionService"

    const-string v8, "Remotely injecting a keystroke event into the UI failed"

    move v9, v10

    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 552
    :goto_9c
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 554
    return v1
.end method

.method public injectPointerEvent(Landroid/view/MotionEvent;Z)Z
    .registers 16
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "sync"    # Z

    .line 328
    invoke-direct {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->enforceRemoteControlPermissionNoActiveAdmin()V

    .line 330
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 331
    .local v0, "callerUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 334
    .local v8, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 336
    .local v9, "token":J
    const/4 v11, 0x0

    .line 338
    .local v11, "ret":Z
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteInjectionDisabled(I)Z

    move-result v1

    const-string v2, "RemoteInjection"

    if-eqz v1, :cond_30

    .line 339
    const-string v1, "Remote Control is disabled, couldnt inject pointer event"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 341
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    .line 340
    const-string v5, "RemoteInjectionService"

    const-string v6, "Remotely injecting a pointer (touch) event into the UI failed"

    move v7, v8

    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 343
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 344
    return v11

    .line 347
    :cond_30
    const/4 v1, 0x0

    .line 349
    .local v1, "tev":Landroid/view/MotionEvent;
    const/4 v3, 0x0

    :try_start_32
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setDisplayId(I)V

    .line 350
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->transformMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    move-object v1, v3

    .line 351
    invoke-direct {p0, v1, p2}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->injectPointerEventInternal(Landroid/view/MotionEvent;Z)Z

    move-result v2
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3e} :catch_42

    move v11, v2

    .line 354
    move v12, v11

    move-object v11, v1

    goto :goto_59

    .line 352
    :catch_42
    move-exception v3

    .line 353
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error injecting pointer event : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v12, v11

    move-object v11, v1

    .line 357
    .end local v1    # "tev":Landroid/view/MotionEvent;
    .end local v3    # "e":Ljava/lang/Exception;
    .local v11, "tev":Landroid/view/MotionEvent;
    .local v12, "ret":Z
    :goto_59
    if-eqz v12, :cond_6b

    .line 358
    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string v5, "RemoteInjectionService"

    const-string v6, "Remotely injecting a pointer (touch) event into the UI succeeded"

    move v7, v8

    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_7a

    .line 361
    :cond_6b
    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string v5, "RemoteInjectionService"

    const-string v6, "Remotely injecting a pointer (touch) event into the UI failed"

    move v7, v8

    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 365
    :goto_7a
    if-eqz v11, :cond_7f

    .line 366
    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V

    .line 368
    :cond_7f
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 370
    return v12
.end method

.method public injectPointerEventDex(Landroid/view/MotionEvent;Z)Z
    .registers 16
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "sync"    # Z

    .line 445
    invoke-direct {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->enforceRemoteDexPermissionNoActiveAdmin()V

    .line 447
    invoke-direct {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isDexModeOn()Z

    move-result v0

    const-string v1, "RemoteInjection"

    if-nez v0, :cond_12

    .line 448
    const-string v0, "Dex Mode is not On, couldnt inject Pointer Event to Dex"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const/4 v0, 0x0

    return v0

    .line 452
    :cond_12
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 453
    .local v0, "callerUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 456
    .local v9, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 458
    .local v10, "token":J
    const/4 v12, 0x0

    .line 460
    .local v12, "ret":Z
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteInjectionDisabled(I)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 461
    const-string v2, "Remote Control is disabled, couldnt inject pointer event"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 463
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    .line 462
    const-string v6, "RemoteInjectionService"

    const-string v7, "Remotely injecting a pointer (touch) event into the UI failed"

    move v8, v9

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 465
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 466
    return v12

    .line 469
    :cond_3d
    const/4 v2, 0x0

    .line 471
    .local v2, "tev":Landroid/view/MotionEvent;
    const/4 v3, 0x2

    :try_start_3f
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setDisplayId(I)V

    .line 472
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_52

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    if-eq v4, v3, :cond_52

    .line 473
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setButtonState(I)V

    .line 474
    :cond_52
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->transformMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    move-object v2, v3

    .line 475
    invoke-direct {p0, v2, p2}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->injectPointerEventInternalDex(Landroid/view/MotionEvent;Z)Z

    move-result v1
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_5b} :catch_5e

    move v12, v1

    .line 478
    move-object v1, v2

    goto :goto_74

    .line 476
    :catch_5e
    move-exception v3

    .line 477
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error injecting pointer event in dex screen : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 481
    .end local v2    # "tev":Landroid/view/MotionEvent;
    .end local v3    # "e":Ljava/lang/Exception;
    .local v1, "tev":Landroid/view/MotionEvent;
    :goto_74
    if-eqz v12, :cond_86

    .line 482
    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "RemoteInjectionService"

    const-string v7, "Remotely injecting a pointer (touch) event into the UI succeeded"

    move v8, v9

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_95

    .line 485
    :cond_86
    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "RemoteInjectionService"

    const-string v7, "Remotely injecting a pointer (touch) event into the UI failed"

    move v8, v9

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 489
    :goto_95
    if-eqz v1, :cond_9a

    .line 490
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 492
    :cond_9a
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 494
    return v12
.end method

.method public injectTrackballEvent(Landroid/view/MotionEvent;Z)Z
    .registers 16
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "sync"    # Z

    .line 397
    invoke-direct {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->enforceRemoteControlPermissionNoActiveAdmin()V

    .line 399
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 400
    .local v0, "callerUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 403
    .local v8, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 405
    .local v9, "token":J
    const/4 v11, 0x0

    .line 407
    .local v11, "ret":Z
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteInjectionDisabled(I)Z

    move-result v1

    const-string v2, "RemoteInjection"

    if-eqz v1, :cond_30

    .line 408
    const-string v1, "Remote Control is disabled, couldnt inject track ball event"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 410
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    .line 409
    const-string v5, "RemoteInjectionService"

    const-string v6, "Remotely injecting a trackball event into the UI failed"

    move v7, v8

    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 412
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 413
    return v11

    .line 416
    :cond_30
    const/4 v1, 0x0

    .line 418
    .local v1, "tev":Landroid/view/MotionEvent;
    :try_start_31
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->transformMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    move-object v1, v3

    .line 419
    invoke-direct {p0, v1, p2}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->injectTrackballEventInternal(Landroid/view/MotionEvent;Z)Z

    move-result v2
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3a} :catch_3e

    move v11, v2

    .line 422
    move v12, v11

    move-object v11, v1

    goto :goto_55

    .line 420
    :catch_3e
    move-exception v3

    .line 421
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error injecting trackball event : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v12, v11

    move-object v11, v1

    .line 425
    .end local v1    # "tev":Landroid/view/MotionEvent;
    .end local v3    # "e":Ljava/lang/Exception;
    .local v11, "tev":Landroid/view/MotionEvent;
    .local v12, "ret":Z
    :goto_55
    if-eqz v12, :cond_67

    .line 426
    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string v5, "RemoteInjectionService"

    const-string v6, "Remotely injecting a trackball event into the UI succeeded"

    move v7, v8

    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_76

    .line 429
    :cond_67
    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string v5, "RemoteInjectionService"

    const-string v6, "Remotely injecting a trackball event into the UI failed"

    move v7, v8

    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 433
    :goto_76
    if-eqz v11, :cond_7b

    .line 434
    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V

    .line 436
    :cond_7b
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 438
    return v12
.end method

.method public isRemoteControlAllowed(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 829
    const/4 v0, 0x1

    .line 832
    .local v0, "ret":Z
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "RESTRICTION"

    const-string v3, "allowRemoteControl"

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 835
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_25

    .line 836
    .local v3, "value":Z
    if-nez v3, :cond_23

    .line 837
    move v0, v3

    .line 838
    goto :goto_24

    .line 840
    .end local v3    # "value":Z
    :cond_23
    goto :goto_f

    .line 843
    .end local v1    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :cond_24
    :goto_24
    goto :goto_2d

    .line 841
    :catch_25
    move-exception v1

    .line 842
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "RemoteInjection"

    const-string v3, "RemoteInjection.isRemoteControlAllowed() exception : "

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2d
    return v0
.end method

.method public isRemoteControlAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 848
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 849
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlAllowed(I)Z

    move-result v1

    return v1
.end method

.method public isRemoteControlDisabled(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 853
    invoke-direct {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isUsingKnoxRemoteScreen()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 854
    iget v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mKnoxRemoteScreenSessionOwnerUid:I

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlDisabledInternal(II)Z

    move-result v0

    return v0

    .line 856
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Landroid/os/IBinder;

    .line 887
    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 576
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 5
    .param p1, "uid"    # I

    .line 580
    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteControlDisabled:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 581
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlAllowed(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 580
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 582
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 605
    return-void
.end method

.method public systemReady()V
    .registers 3

    .line 587
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$1;-><init>(Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 599
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 600
    return-void
.end method

.method public updateDexScreenDimensions(III)V
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "uid"    # I

    .line 558
    invoke-direct {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->enforceSystemUser()V

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteInjectionService: updateDexScreenDimensions() width : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteInjection"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->updateKnoxRemoteScreenSessionUid(I)V

    .line 562
    invoke-direct {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isUsingKnoxRemoteScreen()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 563
    iput p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mDexScreenWidth:I

    .line 564
    iput p2, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mDexScreenHeight:I

    goto :goto_3b

    .line 566
    :cond_2f
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->updateCurrentDisplayDimensions(I)V

    .line 567
    iget v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayWidth:I

    iput v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mDexScreenWidth:I

    .line 568
    iget v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayHeight:I

    iput v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mDexScreenHeight:I

    .line 570
    :goto_3b
    return-void
.end method

.method public updateRemoteScreenDimensionsAndCallerUid(III)V
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "uid"    # I

    .line 776
    invoke-direct {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->enforceSystemUser()V

    .line 777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteInjectionService: updateRemoteScreenDimensions() width : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteInjection"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->updateKnoxRemoteScreenSessionUid(I)V

    .line 780
    invoke-direct {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isUsingKnoxRemoteScreen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    .line 781
    iput p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWidth:I

    .line 782
    iput p2, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenHeight:I

    goto :goto_43

    .line 784
    :cond_38
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->updateCurrentDisplayDimensions(I)V

    .line 785
    iget v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayWidth:I

    iput v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWidth:I

    .line 786
    iget v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayHeight:I

    iput v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenHeight:I

    .line 789
    :goto_43
    iput v1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mDexScreenWidth:I

    .line 790
    iput v1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mDexScreenHeight:I

    .line 791
    return-void
.end method
