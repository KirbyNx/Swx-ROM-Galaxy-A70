.class public Lcom/android/server/notification/edgelighting/EdgeLightingManager;
.super Ljava/lang/Object;
.source "EdgeLightingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

.field private mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

.field private mIStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mIsEdgeLightingSupported:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRinging:Z

.field private mScreenOnTimeStamp:J

.field private mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTurnOverLightingPackage:Ljava/lang/String;

.field private mUserId:I

.field private mUserSetupCompleted:Z

.field private mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 65
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    .line 67
    const-class v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mUserId:I

    .line 83
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mIsEdgeLightingSupported:Z

    .line 85
    iput-boolean v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mRinging:Z

    .line 87
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mScreenOnTimeStamp:J

    .line 89
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mTurnOverLightingPackage:Ljava/lang/String;

    .line 91
    iput-boolean v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mUserSetupCompleted:Z

    .line 97
    new-instance v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$1;-><init>(Lcom/android/server/notification/edgelighting/EdgeLightingManager;)V

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 112
    new-instance v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$2;-><init>(Lcom/android/server/notification/edgelighting/EdgeLightingManager;)V

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 128
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mContext:Landroid/content/Context;

    .line 129
    new-instance v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-direct {v0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    .line 130
    new-instance v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-direct {v0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 131
    new-instance v0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-direct {v0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    .line 132
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mPowerManager:Landroid/os/PowerManager;

    .line 133
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 134
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 135
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 136
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SYSTEMUI_SUPPORT_BRIEF_NOTIFICATION"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mIsEdgeLightingSupported:Z

    .line 137
    invoke-direct {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->registerReceiver()V

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/notification/edgelighting/EdgeLightingManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    .line 63
    iget-boolean v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mRinging:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/notification/edgelighting/EdgeLightingManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/edgelighting/EdgeLightingManager;
    .param p1, "x1"    # Z

    .line 63
    iput-boolean p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mRinging:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/notification/edgelighting/EdgeLightingManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    .line 63
    invoke-direct {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isEdgeLightingServiceUnbinded()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/notification/edgelighting/EdgeLightingManager;)Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    .line 63
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/notification/edgelighting/EdgeLightingManager;)Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    .line 63
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/notification/edgelighting/EdgeLightingManager;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/notification/edgelighting/EdgeLightingManager;
    .param p1, "x1"    # J

    .line 63
    iput-wide p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mScreenOnTimeStamp:J

    return-wide p1
.end method

.method static synthetic access$600()Ljava/lang/String;
    .registers 1

    .line 63
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private hideEdgeLightingInternal(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 266
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_27

    .line 267
    :cond_8
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hideEdgeLightingInternal : packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_27
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->stopEdgeLightingInternal(Ljava/lang/String;I)V

    .line 270
    return-void
.end method

.method private hideForWakeLockInternal(Ljava/lang/String;II)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I
    .param p3, "callingUid"    # I

    .line 1025
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1026
    .local v0, "callingUserId":I
    invoke-direct {p0, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isCallingUserSupported(I)Z

    move-result v1

    if-nez v1, :cond_24

    .line 1027
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hideForWakeLockInternal : Calling user is not supported | Package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 1030
    return-void

    .line 1032
    :cond_24
    invoke-direct {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isUserSetupCompleted()Z

    move-result v1

    if-nez v1, :cond_4c

    .line 1033
    sget-object v1, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "hideForWakeLockInternal : user setup is not yet completed."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hideForWakeLockInternal : user setup is not yet completed. | Package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 1037
    return-void

    .line 1039
    :cond_4c
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isAllowEdgelighting(Z)Z

    move-result v1

    if-nez v1, :cond_7f

    .line 1040
    sget-boolean v1, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_5d

    sget-boolean v1, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v1, :cond_7e

    .line 1041
    :cond_5d
    sget-object v1, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showForNotificationScreenOn : return false by isAllowEdgelighting."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hideForWakeLockInternal : return false by isAllowEdgelighting. | Package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 1046
    :cond_7e
    return-void

    .line 1048
    :cond_7f
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v1

    if-nez v1, :cond_b2

    .line 1049
    sget-boolean v1, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_90

    sget-boolean v1, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v1, :cond_b1

    .line 1050
    :cond_90
    sget-object v1, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "hideForWakeLockInternal : return false by isAvailableEdgeLighting."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hideForWakeLockInternal : return false by isAvailableEdgeLighting. | Package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 1055
    :cond_b1
    return-void

    .line 1057
    :cond_b2
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v1

    if-nez v1, :cond_e3

    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 1058
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v1

    if-eqz v1, :cond_c4

    goto :goto_e3

    .line 1067
    :cond_c4
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_dd

    .line 1068
    sget-boolean v1, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_d4

    sget-boolean v1, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v1, :cond_dc

    .line 1069
    :cond_d4
    sget-object v1, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "hideForWakeLockInternal : return false by isAcceptableApplication."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    :cond_dc
    return-void

    .line 1073
    :cond_dd
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->stopEdgeLightingInternal(Ljava/lang/String;I)V

    .line 1074
    return-void

    .line 1059
    :cond_e3
    :goto_e3
    sget-boolean v1, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_eb

    sget-boolean v1, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v1, :cond_10c

    .line 1060
    :cond_eb
    sget-object v1, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "hideForWakeLockInternal : return false by checking disable policy."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hideForWakeLockInternal : return false by checking disable policy. | Package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 1065
    :cond_10c
    return-void
.end method

.method private isCallingUserSupported(I)Z
    .registers 7
    .param p1, "callingUserId"    # I

    .line 152
    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    .line 153
    .local v0, "isDualAppId":Z
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    .line 154
    .local v1, "isKnoxId":Z
    sget-boolean v2, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v2, :cond_10

    sget-boolean v2, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v2, :cond_41

    .line 155
    :cond_10
    sget-object v2, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isCallingUserSupported : callingUserId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mUserId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isDualAppId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isKnoxId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_41
    iget v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mUserId:I

    if-eq v2, p1, :cond_4f

    const/4 v2, -0x1

    if-eq p1, v2, :cond_4f

    if-nez v0, :cond_4f

    if-eqz v1, :cond_4d

    goto :goto_4f

    :cond_4d
    const/4 v2, 0x0

    goto :goto_50

    :cond_4f
    :goto_4f
    const/4 v2, 0x1

    :goto_50
    return v2
.end method

.method private isEdgeLightingServiceUnbinded()Z
    .registers 3

    .line 524
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->existsHosts()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->isEdgeLightingSettingEnabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method private isFolded()Z
    .registers 3

    .line 1105
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    .line 1106
    .local v0, "semWindowManager":Lcom/samsung/android/view/SemWindowManager;
    if-eqz v0, :cond_b

    .line 1107
    invoke-virtual {v0}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    move-result v1

    return v1

    .line 1109
    :cond_b
    const/4 v1, 0x0

    return v1
.end method

.method private isUserSetupCompleted()Z
    .registers 2

    .line 141
    iget-boolean v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mUserSetupCompleted:Z

    if-nez v0, :cond_7

    .line 142
    invoke-direct {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->verifyUserSetupCompleted()V

    .line 144
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mUserSetupCompleted:Z

    return v0
.end method

.method private registerReceiver()V
    .registers 4

    .line 161
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 162
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 164
    return-void
.end method

.method private showEdgeLightingInternal(Ljava/lang/String;Landroid/os/Bundle;ZII)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "extra"    # Landroid/os/Bundle;
    .param p3, "infiniteLoop"    # Z
    .param p4, "reason"    # I
    .param p5, "range"    # I

    .line 249
    const/4 v0, 0x0

    if-eqz p2, :cond_a

    const-string v1, "color"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_b

    :cond_a
    move v1, v0

    .line 251
    .local v1, "color":I
    :goto_b
    new-instance v2, Lcom/samsung/android/edge/SemEdgeLightingInfo;

    const/16 v3, 0x7d1

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v1, v4, v0

    const/4 v5, 0x1

    aput v0, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/edge/SemEdgeLightingInfo;-><init>(I[I)V

    move-object v0, v2

    .line 252
    .local v0, "info":Lcom/samsung/android/edge/SemEdgeLightingInfo;
    iget v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->setUserId(I)V

    .line 253
    if-eqz p3, :cond_26

    .line 254
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->setRepeatCount(I)V

    .line 256
    :cond_26
    if-eqz p2, :cond_2b

    .line 257
    invoke-virtual {v0, p2}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->setExtra(Landroid/os/Bundle;)V

    .line 259
    :cond_2b
    sget-boolean v2, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v2, :cond_33

    sget-boolean v2, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v2, :cond_52

    .line 260
    :cond_33
    sget-object v2, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showEdgeLightingInternal : packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_52
    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v2, p1, v0, p4}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->startEdgeLightingInternal(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V

    .line 263
    return-void
.end method

.method private showForNotificationScreenOff(Landroid/service/notification/StatusBarNotification;ZZIIZZ)Z
    .registers 26
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "isHeadUp"    # Z
    .param p3, "isUpdate"    # Z
    .param p4, "userId"    # I
    .param p5, "visibility"    # I
    .param p6, "hasAudibleAlert"    # Z
    .param p7, "canBubble"    # Z

    .line 570
    move-object/from16 v6, p0

    move-object/from16 v14, p1

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 571
    .local v15, "packageName":Ljava/lang/String;
    const/4 v5, 0x6

    .line 572
    .local v5, "condition":I
    iget-object v0, v6, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->getEdgeLightingCondition()I

    move-result v4

    .line 573
    .local v4, "hostCondition":I
    iget-object v0, v6, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, v5}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v0

    const/16 v16, 0x0

    if-nez v0, :cond_43

    .line 574
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_21

    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_42

    .line 575
    :cond_21
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForNotificationScreenOff : return false by isAvailableEdgeLighting."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showForNotificationScreenOff : return false by isAvailableEdgeLighting. | Package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 579
    :cond_42
    return v16

    .line 582
    :cond_43
    iget-object v0, v6, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v0

    if-nez v0, :cond_161

    iget-object v0, v6, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 583
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v0

    if-nez v0, :cond_15c

    iget-object v0, v6, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 584
    invoke-virtual {v0, v3, v15}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabledByPackage(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    move/from16 v9, p4

    move v11, v4

    move v12, v5

    goto/16 :goto_165

    .line 591
    :cond_62
    iget-object v7, v6, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->putNotification(Landroid/service/notification/StatusBarNotification;ZZIZZ)Landroid/os/Bundle;

    move-result-object v7

    .line 592
    .local v7, "data":Landroid/os/Bundle;
    invoke-static {v7}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEmptyText(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 593
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForNotificationScreenOff : texts are empty."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showForNotificationScreenOff : texts are empty. | Package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 596
    return v16

    .line 598
    :cond_9c
    if-eqz p3, :cond_e1

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_e1

    .line 599
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showForNotificationScreenOff Alert once notification. sbn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showForNotificationScreenOff : Alert once notification. | Package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", sbn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 603
    return v16

    .line 606
    :cond_e1
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_113

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result v0

    if-eqz v0, :cond_113

    .line 607
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForNotificationScreenOff No peeking: suppressed due to group alert behavior"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showForNotificationScreenOff : No peeking suppressed due to group alert behavior. | Package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 611
    return v16

    .line 615
    :cond_113
    and-int/lit8 v0, v4, 0x4

    if-eqz v0, :cond_119

    move v0, v3

    goto :goto_11b

    :cond_119
    move/from16 v0, v16

    :goto_11b
    move v8, v0

    .line 616
    .local v8, "includeAllApp":Z
    iget-object v0, v6, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    move/from16 v9, p4

    invoke-virtual {v0, v15, v3, v8, v9}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;IZI)Z

    move-result v0

    if-nez v0, :cond_137

    .line 617
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_12e

    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_136

    .line 618
    :cond_12e
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForNotificationScreenOff : return false by isAcceptableApplication."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_136
    return v16

    .line 622
    :cond_137
    const/4 v0, 0x4

    if-ne v4, v0, :cond_13c

    move v0, v3

    goto :goto_13e

    :cond_13c
    move/from16 v0, v16

    :goto_13e
    move v10, v0

    .line 623
    .local v10, "turnOver":Z
    const/4 v11, 0x0

    if-eqz v10, :cond_145

    const/4 v0, 0x7

    move v12, v0

    goto :goto_146

    :cond_145
    move v12, v3

    :goto_146
    const/4 v13, 0x1

    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v7

    move/from16 v17, v3

    move v3, v11

    move v11, v4

    .end local v4    # "hostCondition":I
    .local v11, "hostCondition":I
    move v4, v12

    move v12, v5

    .end local v5    # "condition":I
    .local v12, "condition":I
    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->showEdgeLightingInternal(Ljava/lang/String;Landroid/os/Bundle;ZII)V

    .line 625
    and-int/lit8 v0, v11, 0x1

    if-eqz v0, :cond_15b

    move/from16 v16, v17

    :cond_15b
    return v16

    .line 583
    .end local v7    # "data":Landroid/os/Bundle;
    .end local v8    # "includeAllApp":Z
    .end local v10    # "turnOver":Z
    .end local v11    # "hostCondition":I
    .end local v12    # "condition":I
    .restart local v4    # "hostCondition":I
    .restart local v5    # "condition":I
    :cond_15c
    move/from16 v9, p4

    move v11, v4

    move v12, v5

    .end local v4    # "hostCondition":I
    .end local v5    # "condition":I
    .restart local v11    # "hostCondition":I
    .restart local v12    # "condition":I
    goto :goto_165

    .line 582
    .end local v11    # "hostCondition":I
    .end local v12    # "condition":I
    .restart local v4    # "hostCondition":I
    .restart local v5    # "condition":I
    :cond_161
    move/from16 v9, p4

    move v11, v4

    move v12, v5

    .line 585
    .end local v4    # "hostCondition":I
    .end local v5    # "condition":I
    .restart local v11    # "hostCondition":I
    .restart local v12    # "condition":I
    :goto_165
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForNotificationScreenOff : return false by checking disable policy."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showForNotificationScreenOff : return false by checking disable policy  | Package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 589
    return v16
.end method

.method private showForNotificationScreenOn(Landroid/service/notification/StatusBarNotification;ZZIIZZ)Z
    .registers 27
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "isHeadUp"    # Z
    .param p3, "isUpdate"    # Z
    .param p4, "userId"    # I
    .param p5, "visibility"    # I
    .param p6, "hasAudibleAlert"    # Z
    .param p7, "canBubble"    # Z

    .line 629
    move-object/from16 v6, p0

    move-object/from16 v14, p1

    move/from16 v15, p4

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 630
    .local v5, "packageName":Ljava/lang/String;
    const/4 v4, 0x1

    .line 631
    .local v4, "condition":I
    iget-object v0, v6, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->getEdgeLightingCondition()I

    move-result v3

    .line 633
    .local v3, "hostCondition":I
    iget-object v0, v6, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, v4}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v0

    const/16 v16, 0x0

    if-nez v0, :cond_45

    .line 634
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_23

    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_44

    .line 635
    :cond_23
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForNotificationScreenOn : return false by isAvailableEdgeLighting."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showForNotificationScreenOn : return false by isAvailableEdgeLighting. | Package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 640
    :cond_44
    return v16

    .line 642
    :cond_45
    iget-object v0, v6, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    const/16 v1, 0x100

    invoke-virtual {v0, v5, v1, v15}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result v17

    .line 644
    .local v17, "forceHeadUp":Z
    if-nez v17, :cond_5e

    iget-object v0, v6, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEnabledHeadsUp()Z

    move-result v0

    if-eqz v0, :cond_58

    goto :goto_5e

    :cond_58
    move/from16 v18, v3

    move v11, v4

    move-object v12, v5

    goto/16 :goto_1a0

    :cond_5e
    :goto_5e
    iget-object v0, v6, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 645
    invoke-virtual {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isHUNPeeked()Z

    move-result v0

    if-eqz v0, :cond_19c

    iget-object v0, v6, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 646
    invoke-virtual {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v0

    if-nez v0, :cond_197

    iget-object v0, v6, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 647
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v0

    if-nez v0, :cond_192

    iget-object v0, v6, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 648
    invoke-virtual {v0, v1, v5}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabledByPackage(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_85

    move/from16 v18, v3

    move v11, v4

    move-object v12, v5

    goto/16 :goto_1a0

    .line 655
    :cond_85
    iget-object v7, v6, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->putNotification(Landroid/service/notification/StatusBarNotification;ZZIZZ)Landroid/os/Bundle;

    move-result-object v7

    .line 656
    .local v7, "data":Landroid/os/Bundle;
    invoke-static {v7}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEmptyText(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 657
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForNotificationScreenOn : texts are empty."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showForNotificationScreenOn : texts are empty. | Package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 660
    return v16

    .line 662
    :cond_bf
    if-eqz p3, :cond_104

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_104

    .line 663
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showForNotificationScreenOn Alert once notification. sbn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showForNotificationScreenOn : Alert once notification. | Package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", sbn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 667
    return v16

    .line 670
    :cond_104
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_136

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result v0

    if-eqz v0, :cond_136

    .line 671
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForNotificationScreenOn No peeking: suppressed due to group alert behavior"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showForNotificationScreenOn : No peeking suppressed due to group alert behavior. | Package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 675
    return v16

    .line 678
    :cond_136
    iget-object v0, v6, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, v5, v1, v15}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_14f

    .line 679
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_146

    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_14e

    .line 680
    :cond_146
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForNotificationScreenOn : return false by isAcceptableApplication."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :cond_14e
    return v16

    .line 683
    :cond_14f
    if-nez p2, :cond_155

    .line 684
    move/from16 v0, v17

    move v8, v0

    .end local p2    # "isHeadUp":Z
    .local v0, "isHeadUp":Z
    goto :goto_157

    .line 683
    .end local v0    # "isHeadUp":Z
    .restart local p2    # "isHeadUp":Z
    :cond_155
    move/from16 v8, p2

    .line 686
    .end local p2    # "isHeadUp":Z
    .local v8, "isHeadUp":Z
    :goto_157
    if-eqz v8, :cond_163

    iget-object v0, v6, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, v14}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isNotificationForEdgeLighting(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_163

    move v0, v1

    goto :goto_165

    :cond_163
    move/from16 v0, v16

    :goto_165
    move v9, v0

    .line 687
    .local v9, "allowShow":Z
    if-eqz v9, :cond_187

    .line 688
    const/4 v0, 0x4

    if-ne v3, v0, :cond_16d

    move v0, v1

    goto :goto_16f

    :cond_16d
    move/from16 v0, v16

    :goto_16f
    move v10, v0

    .line 689
    .local v10, "turnOver":Z
    const/4 v11, 0x0

    if-eqz v10, :cond_176

    const/4 v0, 0x7

    move v12, v0

    goto :goto_177

    :cond_176
    move v12, v1

    :goto_177
    const/4 v13, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v7

    move/from16 v18, v3

    .end local v3    # "hostCondition":I
    .local v18, "hostCondition":I
    move v3, v11

    move v11, v4

    .end local v4    # "condition":I
    .local v11, "condition":I
    move v4, v12

    move-object v12, v5

    .end local v5    # "packageName":Ljava/lang/String;
    .local v12, "packageName":Ljava/lang/String;
    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->showEdgeLightingInternal(Ljava/lang/String;Landroid/os/Bundle;ZII)V

    goto :goto_18b

    .line 687
    .end local v10    # "turnOver":Z
    .end local v11    # "condition":I
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v18    # "hostCondition":I
    .restart local v3    # "hostCondition":I
    .restart local v4    # "condition":I
    .restart local v5    # "packageName":Ljava/lang/String;
    :cond_187
    move/from16 v18, v3

    move v11, v4

    move-object v12, v5

    .line 692
    .end local v3    # "hostCondition":I
    .end local v4    # "condition":I
    .end local v5    # "packageName":Ljava/lang/String;
    .restart local v11    # "condition":I
    .restart local v12    # "packageName":Ljava/lang/String;
    .restart local v18    # "hostCondition":I
    :goto_18b
    and-int/lit8 v0, v18, 0x1

    if-eqz v0, :cond_191

    move/from16 v16, v9

    :cond_191
    return v16

    .line 647
    .end local v7    # "data":Landroid/os/Bundle;
    .end local v8    # "isHeadUp":Z
    .end local v9    # "allowShow":Z
    .end local v11    # "condition":I
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v18    # "hostCondition":I
    .restart local v3    # "hostCondition":I
    .restart local v4    # "condition":I
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local p2    # "isHeadUp":Z
    :cond_192
    move/from16 v18, v3

    move v11, v4

    move-object v12, v5

    .end local v3    # "hostCondition":I
    .end local v4    # "condition":I
    .end local v5    # "packageName":Ljava/lang/String;
    .restart local v11    # "condition":I
    .restart local v12    # "packageName":Ljava/lang/String;
    .restart local v18    # "hostCondition":I
    goto :goto_1a0

    .line 646
    .end local v11    # "condition":I
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v18    # "hostCondition":I
    .restart local v3    # "hostCondition":I
    .restart local v4    # "condition":I
    .restart local v5    # "packageName":Ljava/lang/String;
    :cond_197
    move/from16 v18, v3

    move v11, v4

    move-object v12, v5

    .end local v3    # "hostCondition":I
    .end local v4    # "condition":I
    .end local v5    # "packageName":Ljava/lang/String;
    .restart local v11    # "condition":I
    .restart local v12    # "packageName":Ljava/lang/String;
    .restart local v18    # "hostCondition":I
    goto :goto_1a0

    .line 645
    .end local v11    # "condition":I
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v18    # "hostCondition":I
    .restart local v3    # "hostCondition":I
    .restart local v4    # "condition":I
    .restart local v5    # "packageName":Ljava/lang/String;
    :cond_19c
    move/from16 v18, v3

    move v11, v4

    move-object v12, v5

    .line 649
    .end local v3    # "hostCondition":I
    .end local v4    # "condition":I
    .end local v5    # "packageName":Ljava/lang/String;
    .restart local v11    # "condition":I
    .restart local v12    # "packageName":Ljava/lang/String;
    .restart local v18    # "hostCondition":I
    :goto_1a0
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForNotificationScreenOn : return false by checking disable policy."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showForNotificationScreenOn : return false by checking disable policy.  | Package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 653
    return v16
.end method

.method private showForTurnOverNotification(ZLjava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
    .registers 11
    .param p1, "isInteractive"    # Z
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "info"    # Lcom/samsung/android/edge/SemEdgeLightingInfo;
    .param p4, "userId"    # I

    .line 529
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v0

    if-nez v0, :cond_a3

    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 530
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v0

    if-nez v0, :cond_a3

    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 531
    invoke-virtual {v0, v1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabledByPackage(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto/16 :goto_a3

    .line 538
    :cond_1b
    if-eqz p2, :cond_71

    .line 539
    if-nez p1, :cond_38

    .line 541
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, p2, v1, v1, p4}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;IZI)Z

    move-result v0

    if-nez v0, :cond_71

    .line 542
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_2f

    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_37

    .line 543
    :cond_2f
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForTurnOverNotification : return false by isAcceptableApplication.1"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_37
    return-void

    .line 548
    :cond_38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 549
    .local v0, "timeStamp":J
    iget-wide v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mScreenOnTimeStamp:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_4d

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-lez v2, :cond_4d

    .line 550
    return-void

    .line 553
    :cond_4d
    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    const/16 v3, 0x400

    invoke-virtual {v2, p2, v3, p4}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_71

    .line 555
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showForTurnOverNotification : unacceptable application. | Package : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 558
    return-void

    .line 562
    .end local v0    # "timeStamp":J
    :cond_71
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mTurnOverLightingPackage:Ljava/lang/String;

    if-eqz v0, :cond_7b

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a2

    .line 563
    :cond_7b
    iput-object p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mTurnOverLightingPackage:Ljava/lang/String;

    .line 564
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showForTurnOverNotification : packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    const/4 v1, 0x7

    invoke-virtual {v0, p2, v1, p3}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->startTurnOverLighting(Ljava/lang/String;ILcom/samsung/android/edge/SemEdgeLightingInfo;)V

    .line 567
    :cond_a2
    return-void

    .line 532
    :cond_a3
    :goto_a3
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForTurnOverNotification : return false by checking disable policy."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showForTurnOverNotification : return false by checking disable policy. | Package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 536
    return-void
.end method

.method private showForWakeLockInternal(Ljava/lang/String;II)Z
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I
    .param p3, "callingUid"    # I

    .line 939
    invoke-direct {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isFolded()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 940
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showForWakeLockInternal : folded"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 942
    return v1

    .line 944
    :cond_17
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 945
    .local v0, "callingUserId":I
    invoke-direct {p0, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isCallingUserSupported(I)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 946
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showForWakeLockInternal : Calling user is not supported. | Package : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 949
    return v1

    .line 952
    :cond_3b
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 953
    .local v2, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    iget v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result v3

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_57

    .line 954
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v3

    const-string/jumbo v4, "showForWakeLockInternal : lockdown mode"

    invoke-virtual {v3, v4}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 955
    return v1

    .line 958
    :cond_57
    invoke-direct {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isUserSetupCompleted()Z

    move-result v3

    if-nez v3, :cond_7f

    .line 959
    sget-object v3, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "showForWakeLockInternal : user setup is not yet completed"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showForWakeLockInternal : user setup is not yet completed. | Package : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 963
    return v1

    .line 965
    :cond_7f
    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v3, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isAllowEdgelighting(Z)Z

    move-result v3

    if-nez v3, :cond_b1

    .line 966
    sget-boolean v3, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v3, :cond_8f

    sget-boolean v3, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v3, :cond_b0

    .line 967
    :cond_8f
    sget-object v3, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "showForWakeLockInternal : return false by isAllowEdgelighting."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showForWakeLockInternal : return false by isAllowEdgelighting. | Package : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 972
    :cond_b0
    return v1

    .line 975
    :cond_b1
    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v3

    if-nez v3, :cond_e4

    .line 976
    sget-boolean v3, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v3, :cond_c2

    sget-boolean v3, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v3, :cond_e3

    .line 977
    :cond_c2
    sget-object v3, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "showForWakeLockInternal : return false by isAvailableEdgeLighting."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showForWakeLockInternal : return false by isAvailableEdgeLighting. | Package : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 982
    :cond_e3
    return v1

    .line 984
    :cond_e4
    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v3

    if-nez v3, :cond_11a

    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 985
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v3

    if-eqz v3, :cond_f6

    goto :goto_11a

    .line 994
    :cond_f6
    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v3, p1, v4, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_10f

    .line 995
    sget-boolean v3, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v3, :cond_106

    sget-boolean v3, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v3, :cond_10e

    .line 996
    :cond_106
    sget-object v3, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "showForWakeLockInternal : return false by isAcceptableApplication."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    :cond_10e
    return v1

    .line 1000
    :cond_10f
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x4

    move-object v5, p0

    move-object v6, p1

    move v9, p2

    invoke-direct/range {v5 .. v10}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->showEdgeLightingInternal(Ljava/lang/String;Landroid/os/Bundle;ZII)V

    .line 1001
    const/4 v1, 0x1

    return v1

    .line 986
    :cond_11a
    :goto_11a
    sget-boolean v3, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v3, :cond_122

    sget-boolean v3, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v3, :cond_143

    .line 987
    :cond_122
    sget-object v3, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "showForWakeLockInternal : return false by checking disable policy."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showForWakeLockInternal : return false by checking disable policy. | Package : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 992
    :cond_143
    return v1
.end method

.method private showForWakeUpInternal(Ljava/lang/String;II)Z
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I
    .param p3, "callingUid"    # I

    .line 847
    invoke-direct {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isFolded()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 848
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showForWakeUpInternal : folded"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 850
    return v1

    .line 852
    :cond_17
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 853
    .local v0, "callingUserId":I
    invoke-direct {p0, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isCallingUserSupported(I)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 854
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showForWakeUpInternal : Calling user is not supported. | Package : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 857
    return v1

    .line 860
    :cond_3b
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 861
    .local v2, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    iget v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result v3

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_57

    .line 862
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v3

    const-string/jumbo v4, "showForWakeUpInternal : lockdown mode"

    invoke-virtual {v3, v4}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 863
    return v1

    .line 866
    :cond_57
    invoke-direct {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isUserSetupCompleted()Z

    move-result v3

    if-nez v3, :cond_7f

    .line 867
    sget-object v3, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "showForWakeUpInternal : user setup is not yet completed"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showForWakeUpInternal : user setup is not yet completed. | Package : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 871
    return v1

    .line 873
    :cond_7f
    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v3, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isAllowEdgelighting(Z)Z

    move-result v3

    if-nez v3, :cond_b1

    .line 874
    sget-boolean v3, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v3, :cond_8f

    sget-boolean v3, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v3, :cond_b0

    .line 875
    :cond_8f
    sget-object v3, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "showForNotificationScreenOn : return false by isAllowEdgelighting."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showForWakeUpInternal : return false by isAllowEdgelighting. | Package : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 880
    :cond_b0
    return v1

    .line 882
    :cond_b1
    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v3

    if-nez v3, :cond_e4

    .line 883
    sget-boolean v3, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v3, :cond_c2

    sget-boolean v3, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v3, :cond_e3

    .line 884
    :cond_c2
    sget-object v3, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "showForWakeUpInternal : return false by isAvailableEdgeLighting."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showForWakeUpInternal : return false by isAvailableEdgeLighting. | Package : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 889
    :cond_e3
    return v1

    .line 891
    :cond_e4
    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v3

    if-nez v3, :cond_111

    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 892
    invoke-virtual {v3, v4}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v3

    if-eqz v3, :cond_f5

    goto :goto_111

    .line 901
    :cond_f5
    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v3, p1, v4, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_106

    .line 902
    sget-object v3, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "showForWakeUpInternal : return false by isAcceptableApplication."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    return v1

    .line 905
    :cond_106
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x2

    move-object v5, p0

    move-object v6, p1

    move v9, p2

    invoke-direct/range {v5 .. v10}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->showEdgeLightingInternal(Ljava/lang/String;Landroid/os/Bundle;ZII)V

    .line 906
    const/4 v1, 0x1

    return v1

    .line 893
    :cond_111
    :goto_111
    sget-boolean v3, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v3, :cond_119

    sget-boolean v3, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v3, :cond_13a

    .line 894
    :cond_119
    sget-object v3, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "showForWakeUpInternal : return false by checking disable policy."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showForWakeUpInternal : return false by checking disable policy. | Package : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 899
    :cond_13a
    return v1
.end method

.method private verifyUserSetupCompleted()V
    .registers 5

    .line 148
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v2, 0x1

    :cond_12
    iput-boolean v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mUserSetupCompleted:Z

    .line 149
    return-void
.end method


# virtual methods
.method public bindService(Landroid/os/IBinder;ILandroid/content/ComponentName;)V
    .registers 6
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "condition"    # I
    .param p3, "component"    # Landroid/content/ComponentName;

    .line 185
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallingPermissionFromHost()V

    .line 186
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 187
    invoke-direct {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isEdgeLightingServiceUnbinded()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1a

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mTurnOverLightingPackage:Ljava/lang/String;

    .line 190
    :cond_1a
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->bind(Landroid/os/IBinder;ILandroid/content/ComponentName;)V

    .line 191
    return-void
.end method

.method public cancelNotification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 21
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "userId"    # I
    .param p5, "key"    # Ljava/lang/String;

    .line 356
    move-object v1, p0

    move-object/from16 v11, p1

    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_b

    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_21

    .line 357
    :cond_b
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelNotification : pkg= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_21
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelNotification pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateEdgeLightingHistory(Ljava/lang/String;)V

    .line 360
    iget-object v0, v1, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallingPermissionFromHost()V

    .line 361
    iget-object v0, v1, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    const-string v2, "cancelNotification"

    # invokes: Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallingPermission(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->access$500(Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;Ljava/lang/String;)V

    .line 363
    iget-object v0, v1, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mIStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_56

    .line 364
    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mIStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 366
    :cond_56
    iget-object v0, v1, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mIStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_62

    .line 367
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string v2, "cancelNotification : mIStatusBarService is null."

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    return-void

    .line 372
    :cond_62
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 375
    .local v12, "ident":J
    const/4 v0, 0x0

    const/4 v2, 0x1

    move-object/from16 v14, p5

    :try_start_6a
    invoke-static {v14, v0, v2, v2}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZ)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v10

    .line 376
    .local v10, "nv":Lcom/android/internal/statusbar/NotificationVisibility;
    iget-object v2, v1, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mIStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-interface/range {v2 .. v10}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClear(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IILcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_7f} :catch_82
    .catchall {:try_start_6a .. :try_end_7f} :catchall_80

    .end local v10    # "nv":Lcom/android/internal/statusbar/NotificationVisibility;
    goto :goto_86

    .line 381
    :catchall_80
    move-exception v0

    goto :goto_8b

    .line 378
    :catch_82
    move-exception v0

    .line 379
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_83
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_80

    .line 381
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_86
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 382
    nop

    .line 383
    return-void

    .line 381
    :goto_8b
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 382
    throw v0
.end method

.method public cancelNotificationByGroupKey(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .registers 36
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "userId"    # I
    .param p5, "key"    # Ljava/lang/String;
    .param p6, "groupKey"    # Ljava/lang/String;

    .line 306
    move-object/from16 v1, p0

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    const-string v2, " , tag = "

    const-string v3, " , key=  "

    const-string v4, ", id=  "

    if-nez v0, :cond_1c

    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_15

    goto :goto_1c

    :cond_15
    move-object/from16 v15, p2

    move/from16 v14, p3

    move/from16 v13, p4

    goto :goto_52

    .line 307
    :cond_1c
    :goto_1c
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cancelNotificationByGroupKey : cancel notification  uesrid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p4

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p3

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p2

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " , group = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :goto_52
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cancelNotificationByGroupKey pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p1

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateEdgeLightingHistory(Ljava/lang/String;)V

    .line 310
    iget-object v0, v1, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallingPermissionFromHost()V

    .line 311
    iget-object v0, v1, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    const-string v5, "cancelNotificationByGroupKey"

    # invokes: Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallingPermission(Ljava/lang/String;)V
    invoke-static {v0, v5}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->access$500(Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;Ljava/lang/String;)V

    .line 313
    iget-object v0, v1, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mIStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_89

    .line 314
    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mIStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 316
    :cond_89
    iget-object v0, v1, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mIStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_95

    .line 317
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string v2, "cancelNotificationByGroupKey : mIStatusBarService is null."

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return-void

    .line 322
    :cond_95
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v25

    .line 325
    .local v25, "ident":J
    const/4 v0, 0x0

    const/4 v5, 0x1

    if-eqz v12, :cond_134

    .line 326
    :try_start_9d
    iget-object v6, v1, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v6, v12}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->getGroupNotificationData(Ljava/lang/String;)Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;

    move-result-object v6

    .line 327
    .local v6, "groupData":Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;
    if-eqz v6, :cond_132

    invoke-virtual {v6}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getChildNotificationCount()I

    move-result v7

    if-gt v7, v5, :cond_132

    invoke-virtual {v6, v11}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getChild(Ljava/lang/String;)Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v7

    if-eqz v7, :cond_132

    .line 328
    invoke-virtual {v6}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getSummaryNotification()Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v7

    .line 329
    .local v7, "summaryData":Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;
    if-eqz v7, :cond_12d

    .line 330
    iget-object v8, v7, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v10, "user_id"

    invoke-virtual {v8, v10, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 331
    .local v8, "summaryUserId":I
    iget-object v10, v7, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v5, "noti_id"

    invoke-virtual {v10, v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 332
    .local v5, "summaryId":I
    iget-object v10, v7, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v0, "noti_key"

    move-object/from16 v27, v6

    .end local v6    # "groupData":Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;
    .local v27, "groupData":Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;
    const/4 v6, 0x0

    invoke-virtual {v10, v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, "summaryKey":Ljava/lang/String;
    iget-object v10, v7, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v6, "noti_tag"

    move-object/from16 v28, v7

    const/4 v7, 0x0

    .end local v7    # "summaryData":Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;
    .local v28, "summaryData":Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;
    invoke-virtual {v10, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 334
    .local v6, "summaryTag":Ljava/lang/String;
    const/4 v7, 0x0

    const/4 v10, 0x1

    invoke-static {v0, v7, v10, v10}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZ)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v24

    .line 335
    .local v24, "summaryNv":Lcom/android/internal/statusbar/NotificationVisibility;
    iget-object v7, v1, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mIStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v16, v7

    move-object/from16 v17, p1

    move-object/from16 v18, v6

    move/from16 v19, v5

    move/from16 v20, v8

    move-object/from16 v21, v0

    invoke-interface/range {v16 .. v24}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClear(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IILcom/android/internal/statusbar/NotificationVisibility;)V

    .line 337
    sget-boolean v7, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v7, :cond_104

    sget-boolean v7, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v7, :cond_134

    .line 338
    :cond_104
    sget-object v7, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cancelNotificationByGroupKey : Child count 1. so cancel summary notification : uesrid = "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_134

    .line 329
    .end local v0    # "summaryKey":Ljava/lang/String;
    .end local v5    # "summaryId":I
    .end local v8    # "summaryUserId":I
    .end local v24    # "summaryNv":Lcom/android/internal/statusbar/NotificationVisibility;
    .end local v27    # "groupData":Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;
    .end local v28    # "summaryData":Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;
    .local v6, "groupData":Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;
    .restart local v7    # "summaryData":Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;
    :cond_12d
    move-object/from16 v27, v6

    move-object/from16 v28, v7

    .end local v6    # "groupData":Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;
    .end local v7    # "summaryData":Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;
    .restart local v27    # "groupData":Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;
    .restart local v28    # "summaryData":Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;
    goto :goto_134

    .line 327
    .end local v27    # "groupData":Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;
    .end local v28    # "summaryData":Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;
    .restart local v6    # "groupData":Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;
    :cond_132
    move-object/from16 v27, v6

    .line 345
    .end local v6    # "groupData":Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;
    :cond_134
    :goto_134
    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-static {v11, v0, v2, v2}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZ)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v10

    .line 346
    .local v10, "nv":Lcom/android/internal/statusbar/NotificationVisibility;
    iget-object v2, v1, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mIStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-interface/range {v2 .. v10}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClear(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IILcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_14b
    .catch Landroid/os/RemoteException; {:try_start_9d .. :try_end_14b} :catch_14e
    .catchall {:try_start_9d .. :try_end_14b} :catchall_14c

    .end local v10    # "nv":Lcom/android/internal/statusbar/NotificationVisibility;
    goto :goto_152

    .line 351
    :catchall_14c
    move-exception v0

    goto :goto_157

    .line 348
    :catch_14e
    move-exception v0

    .line 349
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_14f
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_152
    .catchall {:try_start_14f .. :try_end_152} :catchall_14c

    .line 351
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_152
    invoke-static/range {v25 .. v26}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 352
    nop

    .line 353
    return-void

    .line 351
    :goto_157
    invoke-static/range {v25 .. v26}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 352
    throw v0
.end method

.method public disable(ILjava/lang/String;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "what"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "binder"    # Landroid/os/IBinder;

    .line 295
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    const-string v1, "disableEdgeLighting"

    # invokes: Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallingPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->access$500(Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->disable(ILjava/lang/String;Landroid/os/IBinder;)V

    .line 298
    return-void
.end method

.method public disableEdgeLightingNotification(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "disable"    # Z

    .line 301
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->disableEdgeLighting(ILjava/lang/String;Z)V

    .line 303
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1151
    const-string v0, "[EdgeLightingManager]"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1152
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1153
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1154
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1155
    return-void
.end method

.method public getEdgeLightingState()I
    .registers 2

    .line 273
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->getEdgeLightingState()I

    move-result v0

    return v0
.end method

.method public hideForNotification(Landroid/service/notification/StatusBarNotification;I)Z
    .registers 9
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "callingUid"    # I

    .line 696
    invoke-direct {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isFolded()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 697
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "hideForNotification : folded"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    return v1

    .line 700
    :cond_10
    if-eqz p1, :cond_b0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-nez v0, :cond_1a

    goto/16 :goto_b0

    .line 703
    :cond_1a
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 704
    .local v0, "sbnUserId":I
    invoke-direct {p0, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isCallingUserSupported(I)Z

    move-result v2

    if-nez v2, :cond_29

    .line 705
    return v1

    .line 707
    :cond_29
    invoke-direct {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isUserSetupCompleted()Z

    move-result v2

    if-nez v2, :cond_38

    .line 708
    sget-object v2, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "hideForNotification : user setup is not yet completed"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    return v1

    .line 711
    :cond_38
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 712
    .local v2, "packageName":Ljava/lang/String;
    sget-object v3, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hideForNotification : packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v3, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->removeNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 714
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v3

    if-nez v3, :cond_67

    .line 715
    sget-object v3, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "hideForNotification : isOngoing is false"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    return v1

    .line 718
    :cond_67
    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    .line 719
    .local v3, "isInteractive":Z
    if-eqz v3, :cond_78

    .line 720
    sget-object v4, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "hideForNotification : isInteractive is true"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    return v1

    .line 724
    :cond_78
    iget-object v4, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v4}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v4

    if-nez v4, :cond_af

    iget-object v4, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 725
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v4

    if-nez v4, :cond_af

    iget-object v4, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 726
    invoke-virtual {v4, v5, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabledByPackage(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_92

    goto :goto_af

    .line 729
    :cond_92
    iget-object v4, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v4, v2, v5, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result v4

    if-nez v4, :cond_ab

    .line 730
    sget-boolean v4, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v4, :cond_a2

    sget-boolean v4, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v4, :cond_aa

    .line 731
    :cond_a2
    sget-object v4, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "hideForNotification : return false by isAcceptableApplication."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :cond_aa
    return v1

    .line 735
    :cond_ab
    invoke-direct {p0, v2, v5}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->hideEdgeLightingInternal(Ljava/lang/String;I)V

    .line 736
    return v1

    .line 727
    :cond_af
    :goto_af
    return v1

    .line 701
    .end local v0    # "sbnUserId":I
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "isInteractive":Z
    :cond_b0
    :goto_b0
    return v1
.end method

.method public hideForWakeLock(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I

    .line 1008
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_1f

    .line 1009
    :cond_8
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hideForWakeLock packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    :cond_1f
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->hideForWakeLockInternal(Ljava/lang/String;II)V

    .line 1012
    return-void
.end method

.method public hideForWakeLockByWindow(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "callingUid"    # I

    .line 1018
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_1f

    .line 1019
    :cond_8
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hideForWakeLockByWindow : packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    :cond_1f
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->hideForWakeLockInternal(Ljava/lang/String;II)V

    .line 1022
    return-void
.end method

.method public isEdgeLightingNotificationAllowed(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 277
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 278
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 279
    .local v0, "callingUserId":I
    invoke-direct {p0, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isCallingUserSupported(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_11

    .line 280
    return v2

    .line 282
    :cond_11
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isHUNPeeked()Z

    move-result v1

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 283
    invoke-virtual {v1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v1

    if-nez v1, :cond_4d

    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 284
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v1

    if-nez v1, :cond_4d

    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 285
    invoke-virtual {v1, v3, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabledByPackage(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4d

    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    .line 287
    iget-object v4, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v4

    if-eqz v4, :cond_3d

    goto :goto_3e

    .line 288
    :cond_3d
    const/4 v3, 0x2

    .line 286
    :goto_3e
    invoke-virtual {v1, v3}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v1

    if-nez v1, :cond_45

    goto :goto_4d

    .line 291
    :cond_45
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    const/4 v2, 0x7

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result v1

    return v1

    .line 289
    :cond_4d
    :goto_4d
    return v2
.end method

.method public isPackageEnabled(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1088
    if-nez p1, :cond_c

    .line 1089
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "isPackageEnabled : packageName is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    const/4 v0, 0x0

    return v0

    .line 1093
    :cond_c
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isRecommendPackage(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2d

    .line 1094
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isPackageEnabled : recommend packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    return v1

    .line 1098
    :cond_2d
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public onBootCompleted()V
    .registers 2

    .line 171
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->onBootCompleted()V

    .line 172
    return-void
.end method

.method public onBootPhaseAppsCanStart()V
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->onBootPhaseAppsCanStart()V

    .line 168
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 175
    iput p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mUserId:I

    .line 176
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->onSwitchUser(I)V

    .line 177
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->onSwitchUser(I)V

    .line 178
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .line 181
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->onUnlockUser(I)V

    .line 182
    return-void
.end method

.method public registerListener(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "component"    # Landroid/content/ComponentName;

    .line 208
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    const-string/jumbo v1, "registerListener"

    # invokes: Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallingPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->access$500(Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->registerListener(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 212
    return-void
.end method

.method public setSuppressed(I)V
    .registers 3
    .param p1, "suppressed"    # I

    .line 1084
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->setSuppressed(I)V

    .line 1085
    return-void
.end method

.method public showForNotification(Landroid/service/notification/StatusBarNotification;Landroid/os/Bundle;)Z
    .registers 33
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "attrs"    # Landroid/os/Bundle;

    .line 386
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    iget-boolean v0, v15, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mIsEdgeLightingSupported:Z

    const/4 v1, 0x0

    if-nez v0, :cond_14

    .line 387
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showForNotification : EdgeLighting is not supported to this model"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    return v1

    .line 391
    :cond_14
    iget-object v0, v15, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v12

    .line 392
    .local v12, "isInteractive":Z
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_3e

    .line 393
    if-nez v12, :cond_2d

    .line 394
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showForNotification : Should show fullScreenIntent while screen off"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    return v1

    .line 396
    :cond_2d
    iget-object v0, v15, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 397
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showForNotification : Should show fullScreenIntent while screen on and keyguard"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    return v1

    .line 401
    :cond_3e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isFolded()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 402
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showForNotification : folded"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 404
    return v1

    .line 407
    :cond_54
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, v15, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    move-object v11, v0

    .line 408
    .local v11, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    iget v0, v15, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mUserId:I

    invoke-virtual {v11, v0}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_71

    .line 409
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    const-string/jumbo v2, "showForNotification : lockdown mode"

    invoke-virtual {v0, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 410
    return v1

    .line 413
    :cond_71
    const-string/jumbo v0, "isHeadUp"

    invoke-virtual {v13, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 414
    .local v10, "isHeadUp":Z
    const-string/jumbo v0, "isUpdate"

    invoke-virtual {v13, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 415
    .local v16, "isUpdate":Z
    const-string/jumbo v0, "isInterrupt"

    invoke-virtual {v13, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 416
    .local v17, "isIntercepted":Z
    const-string v0, "bubble"

    invoke-virtual {v13, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 417
    .local v18, "canBubble":Z
    const-string/jumbo v0, "smartPopup"

    invoke-virtual {v13, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    .line 418
    .local v19, "isSmartPopup":Z
    const-string v0, "canBypassDnd"

    invoke-virtual {v13, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 419
    .local v9, "canBypassDnd":Z
    const/16 v0, -0x3e8

    const-string/jumbo v2, "visibility"

    invoke-virtual {v13, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v20

    .line 420
    .local v20, "vis":I
    const-string/jumbo v0, "sound"

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/net/Uri;

    .line 421
    .local v8, "soundUri":Landroid/net/Uri;
    const-string/jumbo v0, "vibrate"

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v21

    .line 423
    .local v21, "vibration":[J
    if-eqz v14, :cond_2c4

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-nez v0, :cond_c2

    move-object v0, v8

    move v1, v9

    move v2, v10

    move-object v3, v11

    move v4, v12

    goto/16 :goto_2c9

    .line 428
    :cond_c2
    const/4 v0, 0x1

    if-eqz v8, :cond_cf

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v2, v8}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cf

    move v2, v0

    goto :goto_d0

    :cond_cf
    move v2, v1

    :goto_d0
    move/from16 v22, v2

    .line 429
    .local v22, "hasValidSound":Z
    iget-object v2, v15, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Landroid/media/AudioManager;

    .line 431
    .local v23, "audioManager":Landroid/media/AudioManager;
    if-eqz v21, :cond_e2

    move v2, v0

    goto :goto_e3

    :cond_e2
    move v2, v1

    .line 432
    .local v2, "hasValidVibrate":Z
    :goto_e3
    if-nez v21, :cond_f1

    if-eqz v22, :cond_f1

    .line 434
    invoke-virtual/range {v23 .. v23}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v3

    if-ne v3, v0, :cond_f1

    .line 436
    const/4 v2, 0x1

    move/from16 v24, v2

    goto :goto_f3

    .line 439
    :cond_f1
    move/from16 v24, v2

    .end local v2    # "hasValidVibrate":Z
    .local v24, "hasValidVibrate":Z
    :goto_f3
    if-nez v22, :cond_fa

    if-eqz v24, :cond_f8

    goto :goto_fa

    :cond_f8
    move v6, v1

    goto :goto_fb

    :cond_fa
    :goto_fa
    move v6, v0

    .line 443
    .local v6, "hasAudibleAlert":Z
    :goto_fb
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 444
    .local v7, "sbnUserId":I
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 445
    .local v5, "packageName":Ljava/lang/String;
    invoke-direct {v15, v7}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isCallingUserSupported(I)Z

    move-result v0

    if-nez v0, :cond_127

    .line 446
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showForNotification : Calling user is not supported. | Package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 447
    return v1

    .line 449
    :cond_127
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isUserSetupCompleted()Z

    move-result v0

    if-nez v0, :cond_14f

    .line 450
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showForNotification : user setup is not yet completed"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showForNotification : user setup is not yet completed  | Package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 452
    return v1

    .line 454
    :cond_14f
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v4, v0, Landroid/app/Notification;->ledARGB:I

    .line 455
    .local v4, "color":I
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    const-string v2, ", canBypassDnd="

    const-string v3, ", color="

    const-string v1, ", isHeadUp="

    move-object/from16 v26, v8

    .end local v8    # "soundUri":Landroid/net/Uri;
    .local v26, "soundUri":Landroid/net/Uri;
    const-string/jumbo v8, "showForNotification : isInteractive="

    if-nez v0, :cond_1a0

    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_16b

    move-object/from16 v27, v11

    goto :goto_1a2

    .line 459
    :cond_16b
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    move-object/from16 v27, v11

    .end local v11    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .local v27, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", packageName = "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d4

    .line 455
    .end local v27    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v11    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_1a0
    move-object/from16 v27, v11

    .line 456
    .end local v11    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v27    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :goto_1a2
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sbn = "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :goto_1d4
    iget-object v0, v15, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isDexTouchpadEnabled()Z

    move-result v0

    if-eqz v0, :cond_1ff

    .line 464
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForNotification : DEX touchpad enable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showForNotification : DEX touchpad enable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 466
    const/4 v0, 0x0

    return v0

    .line 478
    :cond_1ff
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->semFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_22c

    .line 479
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForNotification : return false by notication disabling edge lighting."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showForNotification : return false by notication disabling edge lighting | Package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 483
    const/4 v0, 0x0

    return v0

    .line 498
    :cond_22c
    if-eqz v17, :cond_251

    .line 499
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showForNotification : return false by isIntercepted"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showForNotification : isIntercepted. | Package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 502
    const/4 v0, 0x0

    return v0

    .line 504
    :cond_251
    if-eqz v12, :cond_2a4

    .line 505
    if-eqz v18, :cond_270

    .line 506
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showForNotification : canBubble. | Package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 508
    const/4 v0, 0x0

    return v0

    .line 511
    :cond_270
    if-eqz v19, :cond_28d

    .line 512
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showForNotification : isSmartPopup. | Package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 514
    const/4 v0, 0x0

    return v0

    .line 517
    :cond_28d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v10

    move/from16 v3, v16

    move/from16 v25, v4

    .end local v4    # "color":I
    .local v25, "color":I
    move v4, v7

    move-object/from16 v28, v5

    .end local v5    # "packageName":Ljava/lang/String;
    .local v28, "packageName":Ljava/lang/String;
    move/from16 v5, v20

    move/from16 v29, v7

    .end local v7    # "sbnUserId":I
    .local v29, "sbnUserId":I
    move/from16 v7, v18

    invoke-direct/range {v0 .. v7}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->showForNotificationScreenOn(Landroid/service/notification/StatusBarNotification;ZZIIZZ)Z

    move-result v0

    return v0

    .line 519
    .end local v25    # "color":I
    .end local v28    # "packageName":Ljava/lang/String;
    .end local v29    # "sbnUserId":I
    .restart local v4    # "color":I
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v7    # "sbnUserId":I
    :cond_2a4
    move/from16 v25, v4

    move-object/from16 v28, v5

    move/from16 v29, v7

    .end local v4    # "color":I
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v7    # "sbnUserId":I
    .restart local v25    # "color":I
    .restart local v28    # "packageName":Ljava/lang/String;
    .restart local v29    # "sbnUserId":I
    move-object/from16 v7, p0

    move-object/from16 v0, v26

    .end local v26    # "soundUri":Landroid/net/Uri;
    .local v0, "soundUri":Landroid/net/Uri;
    move-object/from16 v8, p1

    move v1, v9

    .end local v9    # "canBypassDnd":Z
    .local v1, "canBypassDnd":Z
    move v9, v10

    move v2, v10

    .end local v10    # "isHeadUp":Z
    .local v2, "isHeadUp":Z
    move/from16 v10, v16

    move-object/from16 v3, v27

    .end local v27    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .local v3, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    move/from16 v11, v29

    move v4, v12

    .end local v12    # "isInteractive":Z
    .local v4, "isInteractive":Z
    move/from16 v12, v20

    move v13, v6

    move/from16 v14, v18

    invoke-direct/range {v7 .. v14}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->showForNotificationScreenOff(Landroid/service/notification/StatusBarNotification;ZZIIZZ)Z

    move-result v5

    return v5

    .line 423
    .end local v0    # "soundUri":Landroid/net/Uri;
    .end local v1    # "canBypassDnd":Z
    .end local v2    # "isHeadUp":Z
    .end local v3    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v4    # "isInteractive":Z
    .end local v6    # "hasAudibleAlert":Z
    .end local v22    # "hasValidSound":Z
    .end local v23    # "audioManager":Landroid/media/AudioManager;
    .end local v24    # "hasValidVibrate":Z
    .end local v25    # "color":I
    .end local v28    # "packageName":Ljava/lang/String;
    .end local v29    # "sbnUserId":I
    .restart local v8    # "soundUri":Landroid/net/Uri;
    .restart local v9    # "canBypassDnd":Z
    .restart local v10    # "isHeadUp":Z
    .restart local v11    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v12    # "isInteractive":Z
    :cond_2c4
    move-object v0, v8

    move v1, v9

    move v2, v10

    move-object v3, v11

    move v4, v12

    .line 424
    .end local v8    # "soundUri":Landroid/net/Uri;
    .end local v9    # "canBypassDnd":Z
    .end local v10    # "isHeadUp":Z
    .end local v11    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v12    # "isInteractive":Z
    .restart local v0    # "soundUri":Landroid/net/Uri;
    .restart local v1    # "canBypassDnd":Z
    .restart local v2    # "isHeadUp":Z
    .restart local v3    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v4    # "isInteractive":Z
    :goto_2c9
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v5

    const-string/jumbo v6, "showForNotification : Notification is null"

    invoke-virtual {v5, v6}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 425
    const/4 v5, 0x0

    return v5
.end method

.method public showForResumedActivity(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "cn"    # Landroid/content/ComponentName;

    .line 1077
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->setResumedComponent(Landroid/content/ComponentName;)V

    .line 1078
    return-void
.end method

.method public showForToast(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 17
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "callingUid"    # I

    .line 743
    move-object v6, p0

    move-object v7, p1

    invoke-direct {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isFolded()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 744
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showForToast : folded"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 746
    return v1

    .line 748
    :cond_19
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 749
    .local v8, "callingUserId":I
    invoke-direct {p0, v8}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isCallingUserSupported(I)Z

    move-result v0

    if-nez v0, :cond_24

    .line 750
    return v1

    .line 752
    :cond_24
    invoke-direct {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->isUserSetupCompleted()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 753
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showForToast : user setup is not yet completed."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showForToast : user setup is not yet completed. | Package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 756
    return v1

    .line 758
    :cond_4c
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    const-string/jumbo v2, "showForToast : packageName = "

    if-eqz v0, :cond_71

    .line 759
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",text="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v9, p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8a

    .line 760
    :cond_71
    move-object v9, p2

    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-eqz v0, :cond_8a

    .line 761
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    :cond_8a
    :goto_8a
    iget-object v0, v6, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isAllowEdgelighting(Z)Z

    move-result v0

    if-nez v0, :cond_bd

    .line 764
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_9b

    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_bc

    .line 765
    :cond_9b
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showForNotificationScreenOn : return false by isAllowEdgelighting."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showForToast : return false by isAllowEdgelighting. | Package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 770
    :cond_bc
    return v1

    .line 772
    :cond_bd
    iget-object v0, v6, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, v10}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v0

    if-nez v0, :cond_ef

    .line 773
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_cd

    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_ee

    .line 774
    :cond_cd
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showForToast : return false by isAvailableEdgeLighting."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showForToast : return false by isAvailableEdgeLighting. | Package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 779
    :cond_ee
    return v1

    .line 781
    :cond_ef
    iget-object v0, v6, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v0

    if-nez v0, :cond_189

    iget-object v0, v6, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 782
    const/16 v2, 0x200

    invoke-virtual {v0, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v0

    if-eqz v0, :cond_103

    goto/16 :goto_189

    .line 789
    :cond_103
    iget-object v0, v6, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, p1, v2, v8}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_11c

    .line 790
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_113

    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_11b

    .line 791
    :cond_113
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showForToast : return false by isAcceptableApplication."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :cond_11b
    return v1

    .line 795
    :cond_11c
    iget-object v0, v6, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_13e

    .line 796
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showForToast : power not interactive. | Package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 798
    return v1

    .line 801
    :cond_13e
    iget-object v0, v6, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->getValidNotificationData(Ljava/lang/String;)Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v11

    .line 803
    .local v11, "data":Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;
    if-eqz v11, :cond_188

    .line 804
    invoke-virtual {v11}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->isOnGoing()Z

    move-result v12

    .line 805
    .local v12, "isOnGoing":Z
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showForToast : ongoing check "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    if-nez v12, :cond_16f

    .line 807
    iget-object v2, v11, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/16 v5, 0x200

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->showEdgeLightingInternal(Ljava/lang/String;Landroid/os/Bundle;ZII)V

    .line 808
    return v10

    .line 810
    :cond_16f
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showForToast : onGoing | Package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 812
    .end local v12    # "isOnGoing":Z
    :cond_188
    return v1

    .line 783
    .end local v11    # "data":Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;
    :cond_189
    :goto_189
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showForToast : return false by checking disable policy."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showForToast : return false by checking disable policy. | Package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 787
    return v1
.end method

.method public showForWakeLock(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I

    .line 913
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_1f

    .line 914
    :cond_8
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showForWakeLock : packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    :cond_1f
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->showForWakeLockInternal(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public showForWakeLockByWindow(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "callingUid"    # I

    .line 923
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    .line 924
    .local v0, "screenOn":Z
    sget-boolean v1, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_e

    sget-boolean v1, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v1, :cond_46

    .line 925
    :cond_e
    sget-object v1, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showForWakeLockByWindow : packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", screenOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showForWakeLockByWindow : Calling user is not supported. | Package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 930
    :cond_46
    if-eqz v0, :cond_63

    .line 931
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showForWakeLockByWindow : screenOn | Package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    .line 933
    const/4 v1, 0x0

    return v1

    .line 935
    :cond_63
    const/4 v1, 0x6

    invoke-direct {p0, p1, v1, p3}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->showForWakeLockInternal(Ljava/lang/String;II)Z

    move-result v1

    return v1
.end method

.method public showForWakeUp(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I

    .line 819
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_1f

    .line 820
    :cond_8
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showForWakeUp : packageName ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    :cond_1f
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->showForWakeUpInternal(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public showForWakeUpByWindow(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "callingUid"    # I

    .line 829
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->DEBUG:Z

    if-eqz v0, :cond_1f

    .line 830
    :cond_8
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showForWakeUpByWindow is not supported : packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public startEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/samsung/android/edge/SemEdgeLightingInfo;
    .param p3, "token"    # Landroid/os/IBinder;

    .line 234
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    const-string/jumbo v1, "startEdgeLighting"

    # invokes: Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallingPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->access$500(Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->startEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;)V

    .line 238
    return-void
.end method

.method public statusBarDisabled(II)V
    .registers 4
    .param p1, "state1"    # I
    .param p2, "state2"    # I

    .line 1081
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->statusBarDisabled(II)V

    .line 1082
    return-void
.end method

.method public stopEdgeLighting(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 241
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    const-string/jumbo v1, "stopEdgeLighting"

    # invokes: Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallingPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->access$500(Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->stopEdgeLighting(Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method public unbindService(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 4
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallingPermissionFromHost()V

    .line 195
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->unbind(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public unregisterListener(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    const-string/jumbo v1, "unregisterListener"

    # invokes: Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallingPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->access$500(Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->unregisterListener(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public updateEdgeLightingPackageList(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 201
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallingPermissionFromHost()V

    .line 202
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->updateEdgeLightingPackageList(Ljava/lang/String;Ljava/util/List;)V

    .line 205
    return-void
.end method

.method public updateEdgeLightingPolicy(Ljava/lang/String;Lcom/samsung/android/edge/EdgeLightingPolicy;)V
    .registers 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "policy"    # Lcom/samsung/android/edge/EdgeLightingPolicy;

    .line 222
    if-nez p2, :cond_b

    .line 223
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateEdgeLightingPolicy : policy is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void

    .line 226
    :cond_b
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallingPermissionFromHost()V

    .line 227
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->updateEdgeLightingPolicyFromHost(Lcom/samsung/android/edge/EdgeLightingPolicy;)V

    .line 230
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-virtual {p2}, Lcom/samsung/android/edge/EdgeLightingPolicy;->getPolicyType()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_26

    const/4 v1, 0x1

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    :goto_27
    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->setConnectedMode(Z)V

    .line 231
    return-void
.end method
