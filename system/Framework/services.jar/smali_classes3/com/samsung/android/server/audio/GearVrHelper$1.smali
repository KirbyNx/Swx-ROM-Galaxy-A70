.class Lcom/samsung/android/server/audio/GearVrHelper$1;
.super Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;
.source "GearVrHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/audio/GearVrHelper;->registerGearVrStateListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGearVrStateChanged(II)V
    .registers 6
    .param p1, "state"    # I
    .param p2, "type"    # I

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGearVrStateChanged state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.GearVrHelper"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v0, 0x1

    if-eq p1, v0, :cond_7e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6c

    const/16 v0, 0x10

    if-eq p1, v0, :cond_61

    const/16 v0, 0x20

    if-eq p1, v0, :cond_56

    const/16 v0, 0x4000

    if-eq p1, v0, :cond_50

    const v0, 0x8000

    if-eq p1, v0, :cond_4a

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignore HMT state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9c

    .line 84
    :cond_4a
    const-string v0, "HMT headset unplugged"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    goto :goto_9c

    .line 81
    :cond_50
    const-string v0, "HMT headset plugged"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    goto :goto_9c

    .line 77
    :cond_56
    const-string v0, "HMT unmount"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v0, "l_hmt_state=unmount"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 79
    goto :goto_9c

    .line 73
    :cond_61
    const-string v0, "HMT mount!"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string v0, "l_hmt_state=mount"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 75
    goto :goto_9c

    .line 67
    :cond_6c
    const-string v0, "HMT OFF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string v0, "l_hmt_state=off"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 69
    const/4 v0, 0x0

    # setter for: Lcom/samsung/android/server/audio/GearVrHelper;->mHMTDocked:Z
    invoke-static {v0}, Lcom/samsung/android/server/audio/GearVrHelper;->access$102(Z)Z

    .line 70
    # setter for: Lcom/samsung/android/server/audio/GearVrHelper;->mHMTTetheredDocked:Z
    invoke-static {v0}, Lcom/samsung/android/server/audio/GearVrHelper;->access$002(Z)Z

    .line 71
    goto :goto_9c

    .line 57
    :cond_7e
    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_8b

    .line 58
    const-string v2, "HMT Tethered Docked"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    # setter for: Lcom/samsung/android/server/audio/GearVrHelper;->mHMTTetheredDocked:Z
    invoke-static {v0}, Lcom/samsung/android/server/audio/GearVrHelper;->access$002(Z)Z

    goto :goto_9c

    .line 60
    :cond_8b
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_9c

    .line 61
    const-string v2, "HMT Docked"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string v1, "l_hmt_state=dock"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 63
    # setter for: Lcom/samsung/android/server/audio/GearVrHelper;->mHMTDocked:Z
    invoke-static {v0}, Lcom/samsung/android/server/audio/GearVrHelper;->access$102(Z)Z

    .line 90
    :cond_9c
    :goto_9c
    return-void
.end method
