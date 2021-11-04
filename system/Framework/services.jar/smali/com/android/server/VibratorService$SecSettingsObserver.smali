.class Lcom/android/server/VibratorService$SecSettingsObserver;
.super Landroid/database/ContentObserver;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecSettingsObserver"
.end annotation


# instance fields
.field private mType:I

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;I)V
    .registers 6
    .param p2, "type"    # I

    .line 4068
    iput-object p1, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    .line 4069
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4070
    # getter for: Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$6000(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object p1

    # getter for: Lcom/android/server/VibratorService;->TYPE_URI:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/VibratorService;->access$5900()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 4072
    iput p2, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->mType:I

    .line 4073
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 10
    .param p1, "selfChange"    # Z

    .line 4083
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 4085
    iget-object v0, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mIsEnableIntensity:Z
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$6100(Lcom/android/server/VibratorService;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "VibratorService"

    if-nez v0, :cond_2a

    .line 4086
    const-string/jumbo v0, "mIsEnableIntensity is false (onChange)"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4087
    sget-boolean v0, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_HAPTIC_FEEDBACK_ON_DC_MOTOR:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mMotorType:I
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$6200(Lcom/android/server/VibratorService;)I

    move-result v0

    if-ne v0, v1, :cond_29

    iget v0, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->mType:I

    if-nez v0, :cond_29

    .line 4089
    iget-object v0, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    # invokes: Lcom/android/server/VibratorService;->updateDcHapticFeedbackMagnitude()V
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$6300(Lcom/android/server/VibratorService;)V

    .line 4091
    :cond_29
    return-void

    .line 4093
    :cond_2a
    iget-object v0, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$6400(Lcom/android/server/VibratorService;)[I

    move-result-object v0

    array-length v0, v0

    sub-int/2addr v0, v1

    .line 4094
    .local v0, "magnitudeMaxLevel":I
    iget-object v3, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I
    invoke-static {v3}, Lcom/android/server/VibratorService;->access$6500(Lcom/android/server/VibratorService;)[I

    move-result-object v3

    array-length v3, v3

    sub-int/2addr v3, v1

    .line 4095
    .local v3, "touchMagnitudeMaxLevel":I
    const/4 v4, 0x2

    if-lt v0, v4, :cond_117

    if-ge v3, v4, :cond_41

    goto/16 :goto_117

    .line 4101
    :cond_41
    iget v5, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->mType:I

    const/4 v6, -0x2

    if-eqz v5, :cond_ef

    if-eq v5, v1, :cond_c8

    if-eq v5, v4, :cond_a1

    const/4 v7, 0x3

    if-eq v5, v7, :cond_4f

    goto/16 :goto_116

    .line 4134
    :cond_4f
    iget-object v5, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->LEVEL_TO_FORCE_MAGNITUDE:[I
    invoke-static {v5}, Lcom/android/server/VibratorService;->access$6900(Lcom/android/server/VibratorService;)[I

    move-result-object v5

    array-length v5, v5

    sub-int/2addr v5, v1

    .line 4135
    .local v5, "touchForceMagnitudeMaxLevel":I
    if-ge v5, v4, :cond_6f

    .line 4136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "touchForceMagnitudeMaxLevel : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4137
    return-void

    .line 4140
    :cond_6f
    iget-object v1, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$6000(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v1

    # getter for: Lcom/android/server/VibratorService;->TYPE_URI:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/VibratorService;->access$5900()[Ljava/lang/String;

    move-result-object v4

    iget v7, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->mType:I

    aget-object v4, v4, v7

    invoke-static {v1, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 4142
    .local v1, "magnitudeLevel":I
    iget-object v4, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    if-le v1, v5, :cond_87

    move v6, v1

    goto :goto_8d

    .line 4143
    :cond_87
    # getter for: Lcom/android/server/VibratorService;->LEVEL_TO_FORCE_MAGNITUDE:[I
    invoke-static {v4}, Lcom/android/server/VibratorService;->access$6900(Lcom/android/server/VibratorService;)[I

    move-result-object v6

    aget v6, v6, v1

    .line 4142
    :goto_8d
    # setter for: Lcom/android/server/VibratorService;->mForceMagnitude:I
    invoke-static {v4, v6}, Lcom/android/server/VibratorService;->access$7002(Lcom/android/server/VibratorService;I)I

    .line 4144
    iget-object v4, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mForceMagnitude:I
    invoke-static {v4}, Lcom/android/server/VibratorService;->access$7000(Lcom/android/server/VibratorService;)I

    move-result v4

    int-to-long v6, v4

    invoke-static {v6, v7}, Lcom/android/server/VibratorService;->vibratorSetForceTouchAmplitude(J)V

    .line 4146
    const-string v4, "Force magnitude has changed"

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_116

    .line 4123
    .end local v1    # "magnitudeLevel":I
    .end local v5    # "touchForceMagnitudeMaxLevel":I
    :cond_a1
    iget-object v1, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$6000(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v1

    .line 4124
    # getter for: Lcom/android/server/VibratorService;->TYPE_URI:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/VibratorService;->access$5900()[Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->mType:I

    aget-object v4, v4, v5

    .line 4123
    invoke-static {v1, v4, v0, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 4125
    .restart local v1    # "magnitudeLevel":I
    iget-object v4, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    if-le v1, v0, :cond_b9

    move v5, v1

    goto :goto_bf

    .line 4126
    :cond_b9
    # getter for: Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I
    invoke-static {v4}, Lcom/android/server/VibratorService;->access$6400(Lcom/android/server/VibratorService;)[I

    move-result-object v5

    aget v5, v5, v1

    .line 4125
    :goto_bf
    # setter for: Lcom/android/server/VibratorService;->mNotiMagnitude:I
    invoke-static {v4, v5}, Lcom/android/server/VibratorService;->access$6802(Lcom/android/server/VibratorService;I)I

    .line 4129
    const-string v4, "Notification magnitude has changed"

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4132
    .end local v1    # "magnitudeLevel":I
    goto :goto_116

    .line 4113
    :cond_c8
    iget-object v1, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$6000(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v1

    # getter for: Lcom/android/server/VibratorService;->TYPE_URI:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/VibratorService;->access$5900()[Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->mType:I

    aget-object v4, v4, v5

    invoke-static {v1, v4, v0, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 4115
    .restart local v1    # "magnitudeLevel":I
    iget-object v4, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    .line 4116
    if-le v1, v0, :cond_e0

    move v5, v1

    goto :goto_e6

    :cond_e0
    # getter for: Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I
    invoke-static {v4}, Lcom/android/server/VibratorService;->access$6400(Lcom/android/server/VibratorService;)[I

    move-result-object v5

    aget v5, v5, v1

    .line 4115
    :goto_e6
    # setter for: Lcom/android/server/VibratorService;->mCallMagnitude:I
    invoke-static {v4, v5}, Lcom/android/server/VibratorService;->access$6702(Lcom/android/server/VibratorService;I)I

    .line 4118
    const-string v4, "Call magnitude has changed"

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4121
    .end local v1    # "magnitudeLevel":I
    goto :goto_116

    .line 4103
    :cond_ef
    iget-object v1, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$6000(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v1

    # getter for: Lcom/android/server/VibratorService;->TYPE_URI:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/VibratorService;->access$5900()[Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->mType:I

    aget-object v4, v4, v5

    invoke-static {v1, v4, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 4105
    .restart local v1    # "magnitudeLevel":I
    iget-object v4, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    if-le v1, v3, :cond_107

    move v5, v1

    goto :goto_10d

    .line 4106
    :cond_107
    # getter for: Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I
    invoke-static {v4}, Lcom/android/server/VibratorService;->access$6500(Lcom/android/server/VibratorService;)[I

    move-result-object v5

    aget v5, v5, v1

    .line 4105
    :goto_10d
    # setter for: Lcom/android/server/VibratorService;->mTouchMagnitude:I
    invoke-static {v4, v5}, Lcom/android/server/VibratorService;->access$6602(Lcom/android/server/VibratorService;I)I

    .line 4108
    const-string v4, "Feedback magnitude has changed"

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4111
    .end local v1    # "magnitudeLevel":I
    nop

    .line 4151
    :goto_116
    return-void

    .line 4096
    :cond_117
    :goto_117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "magnitudeMaxLevel(onChange) : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", touchMagnitudeMaxLevel(onChange) : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4098
    return-void
.end method

.method reload()V
    .registers 5

    .line 4076
    iget-object v0, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$6000(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 4077
    iget-object v0, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$6000(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v0

    # getter for: Lcom/android/server/VibratorService;->TYPE_URI:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/VibratorService;->access$5900()[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->mType:I

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 4079
    return-void
.end method
