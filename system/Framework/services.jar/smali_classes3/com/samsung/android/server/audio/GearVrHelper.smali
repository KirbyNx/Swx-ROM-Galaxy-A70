.class public Lcom/samsung/android/server/audio/GearVrHelper;
.super Ljava/lang/Object;
.source "GearVrHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AS.GearVrHelper"

.field private static mHMTDocked:Z

.field private static mHMTTetheredDocked:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/server/audio/GearVrHelper;->mHMTTetheredDocked:Z

    .line 38
    sput-boolean v0, Lcom/samsung/android/server/audio/GearVrHelper;->mHMTDocked:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .line 34
    sput-boolean p0, Lcom/samsung/android/server/audio/GearVrHelper;->mHMTTetheredDocked:Z

    return p0
.end method

.method static synthetic access$102(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .line 34
    sput-boolean p0, Lcom/samsung/android/server/audio/GearVrHelper;->mHMTDocked:Z

    return p0
.end method

.method public static isGearVrDocked()Z
    .registers 1

    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public static registerGearVrStateListener()V
    .registers 3

    .line 48
    const-class v0, Lcom/samsung/android/vr/GearVrManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/vr/GearVrManagerInternal;

    .line 50
    .local v0, "vrService":Lcom/samsung/android/vr/GearVrManagerInternal;
    if-eqz v0, :cond_13

    .line 51
    new-instance v1, Lcom/samsung/android/server/audio/GearVrHelper$1;

    invoke-direct {v1}, Lcom/samsung/android/server/audio/GearVrHelper$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/vr/GearVrManagerInternal;->registerVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V

    goto :goto_1a

    .line 93
    :cond_13
    const-string v1, "AS.GearVrHelper"

    const-string v2, "HMT AudioService failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :goto_1a
    return-void
.end method
