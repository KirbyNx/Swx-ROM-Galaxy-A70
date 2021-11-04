.class public Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$DisplayAdjustmentManager;
.super Ljava/lang/Object;
.source "SemInDisplaySensorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayAdjustmentManager"
.end annotation


# instance fields
.field private mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

.field private mIsDisabled:Z

.field private mIsSupportNightDisplay:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1083
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1084
    invoke-static {p1}, Landroid/hardware/display/ColorDisplayManager;->isNightDisplayAvailable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$DisplayAdjustmentManager;->mIsSupportNightDisplay:Z

    .line 1085
    return-void
.end method


# virtual methods
.method public disable()V
    .registers 7

    .line 1089
    const-class v0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$DisplayAdjustmentManager;

    monitor-enter v0

    .line 1090
    :try_start_3
    # getter for: Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->DEBUG:Z
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->access$1600()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1091
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DisplayAdjustmentManager.disable: start = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$DisplayAdjustmentManager;->mIsDisabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    :cond_21
    iget-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$DisplayAdjustmentManager;->mIsDisabled:Z

    if-eqz v1, :cond_27

    .line 1094
    monitor-exit v0

    return-void

    .line 1096
    :cond_27
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$DisplayAdjustmentManager;->mIsDisabled:Z
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_bd

    .line 1098
    :try_start_2a
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$DisplayAdjustmentManager;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    if-nez v2, :cond_38

    .line 1099
    const-class v2, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    iput-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$DisplayAdjustmentManager;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    .line 1101
    :cond_38
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$DisplayAdjustmentManager;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    if-eqz v2, :cond_43

    .line 1102
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$DisplayAdjustmentManager;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->setSaturationLevelLimit(I)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_43} :catch_44
    .catchall {:try_start_2a .. :try_end_43} :catchall_bd

    .line 1106
    :cond_43
    goto :goto_5f

    .line 1104
    :catch_44
    move-exception v2

    .line 1105
    .local v2, "e":Ljava/lang/Exception;
    :try_start_45
    const-string v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DisplayAdjustmentManager.disable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_5f
    iget-boolean v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$DisplayAdjustmentManager;->mIsSupportNightDisplay:Z
    :try_end_61
    .catchall {:try_start_45 .. :try_end_61} :catchall_bd

    if-eqz v2, :cond_a3

    .line 1111
    :try_start_63
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$DisplayAdjustmentManager;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    if-nez v2, :cond_71

    .line 1112
    const-class v2, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    iput-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$DisplayAdjustmentManager;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    .line 1114
    :cond_71
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$DisplayAdjustmentManager;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    if-eqz v2, :cond_80

    .line 1115
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$DisplayAdjustmentManager;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-virtual {v2}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->forceDisableNightMode()V

    .line 1116
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$DisplayAdjustmentManager;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-virtual {v2, v1}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->setLockNightDisplay(Z)V

    goto :goto_87

    .line 1119
    :cond_80
    const-string v1, "FingerprintService"

    const-string v2, "DisplayAdjustmentManager.disable: CDS is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_87} :catch_88
    .catchall {:try_start_63 .. :try_end_87} :catchall_bd

    .line 1123
    :goto_87
    goto :goto_a3

    .line 1121
    :catch_88
    move-exception v1

    .line 1122
    .local v1, "e":Ljava/lang/Exception;
    :try_start_89
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DisplayAdjustmentManager.disable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_a3
    :goto_a3
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DisplayAdjustmentManager.disable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$DisplayAdjustmentManager;->mIsSupportNightDisplay:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    monitor-exit v0

    .line 1128
    return-void

    .line 1127
    :catchall_bd
    move-exception v1

    monitor-exit v0
    :try_end_bf
    .catchall {:try_start_89 .. :try_end_bf} :catchall_bd

    throw v1
.end method

.method public restore()V
    .registers 7

    .line 1132
    const-class v0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$DisplayAdjustmentManager;

    monitor-enter v0

    .line 1133
    :try_start_3
    # getter for: Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->DEBUG:Z
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->access$1600()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1134
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DisplayAdjustmentManager.restore: start = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$DisplayAdjustmentManager;->mIsDisabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    :cond_21
    iget-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$DisplayAdjustmentManager;->mIsDisabled:Z

    if-nez v1, :cond_27

    .line 1137
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_a3

    return-void

    .line 1141
    :cond_27
    const/4 v1, 0x0

    :try_start_28
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$DisplayAdjustmentManager;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    if-nez v2, :cond_36

    .line 1142
    const-class v2, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    iput-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$DisplayAdjustmentManager;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    .line 1144
    :cond_36
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$DisplayAdjustmentManager;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    if-eqz v2, :cond_3f

    .line 1145
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$DisplayAdjustmentManager;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-virtual {v2, v1}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->setSaturationLevelLimit(I)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3f} :catch_40
    .catchall {:try_start_28 .. :try_end_3f} :catchall_a3

    .line 1149
    :cond_3f
    goto :goto_5b

    .line 1147
    :catch_40
    move-exception v2

    .line 1148
    .local v2, "e":Ljava/lang/Exception;
    :try_start_41
    const-string v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DisplayAdjustmentManager.restore: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_5b
    iget-boolean v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$DisplayAdjustmentManager;->mIsSupportNightDisplay:Z
    :try_end_5d
    .catchall {:try_start_41 .. :try_end_5d} :catchall_a3

    if-eqz v2, :cond_9f

    .line 1153
    :try_start_5f
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$DisplayAdjustmentManager;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    if-nez v2, :cond_6d

    .line 1154
    const-class v2, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    iput-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$DisplayAdjustmentManager;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    .line 1156
    :cond_6d
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$DisplayAdjustmentManager;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    if-eqz v2, :cond_7c

    .line 1157
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$DisplayAdjustmentManager;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-virtual {v2, v1}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->setLockNightDisplay(Z)V

    .line 1158
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$DisplayAdjustmentManager;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-virtual {v2}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->restoreDisplayNightMode()V

    goto :goto_83

    .line 1160
    :cond_7c
    const-string v2, "FingerprintService"

    const-string v3, "DisplayAdjustmentManager.restore: CDS is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_83} :catch_84
    .catchall {:try_start_5f .. :try_end_83} :catchall_a3

    .line 1164
    :goto_83
    goto :goto_9f

    .line 1162
    :catch_84
    move-exception v2

    .line 1163
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_85
    const-string v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DisplayAdjustmentManager.restore: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_9f
    :goto_9f
    iput-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$DisplayAdjustmentManager;->mIsDisabled:Z

    .line 1167
    monitor-exit v0

    .line 1168
    return-void

    .line 1167
    :catchall_a3
    move-exception v1

    monitor-exit v0
    :try_end_a5
    .catchall {:try_start_85 .. :try_end_a5} :catchall_a3

    throw v1
.end method
