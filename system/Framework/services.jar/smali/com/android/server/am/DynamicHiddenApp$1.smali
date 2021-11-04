.class Lcom/android/server/am/DynamicHiddenApp$1;
.super Landroid/hardware/camera2/CameraManager$CameraDeviceStateCallback;
.source "DynamicHiddenApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/DynamicHiddenApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/DynamicHiddenApp;


# direct methods
.method constructor <init>(Lcom/android/server/am/DynamicHiddenApp;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/DynamicHiddenApp;

    .line 423
    iput-object p1, p0, Lcom/android/server/am/DynamicHiddenApp$1;->this$0:Lcom/android/server/am/DynamicHiddenApp;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$CameraDeviceStateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraDeviceStateChanged(Ljava/lang/String;IILjava/lang/String;)V
    .registers 29
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "facing"    # I
    .param p3, "newCameraState"    # I
    .param p4, "clientName"    # Ljava/lang/String;

    .line 436
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    sget v4, Lcom/android/server/am/DynamicHiddenApp;->CAMERA_DHA_VER:I

    if-nez v4, :cond_11

    if-eqz v1, :cond_10

    if-nez v3, :cond_11

    :cond_10
    return-void

    .line 439
    :cond_11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 440
    .local v4, "mUptime":J
    sget-boolean v6, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    const-string v7, "ActivityManager"

    if-eqz v6, :cond_4a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Camera Callback on DHA [id] "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " [faceing] "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p2

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " [newState] "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " [clientName] "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    :cond_4a
    move/from16 v8, p2

    .line 443
    :goto_4c
    const-wide/32 v9, 0x927c0

    cmp-long v6, v4, v9

    const/4 v9, 0x3

    const/4 v10, 0x1

    if-ltz v6, :cond_177

    sget v6, Lcom/android/server/am/DynamicHiddenApp;->CAMERA_DHA_VER:I

    and-int/2addr v6, v10

    if-eqz v6, :cond_177

    .line 444
    const-string v6, "com.sec.android.app.camera"

    .line 451
    .local v6, "sCameraname":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_175

    .line 452
    if-ge v2, v9, :cond_14b

    .line 454
    iget-object v12, v0, Lcom/android/server/am/DynamicHiddenApp$1;->this$0:Lcom/android/server/am/DynamicHiddenApp;

    # getter for: Lcom/android/server/am/DynamicHiddenApp;->isOriginBG:Z
    invoke-static {v12}, Lcom/android/server/am/DynamicHiddenApp;->access$100(Lcom/android/server/am/DynamicHiddenApp;)Z

    move-result v12

    if-ne v12, v10, :cond_148

    .line 455
    iget-object v12, v0, Lcom/android/server/am/DynamicHiddenApp$1;->this$0:Lcom/android/server/am/DynamicHiddenApp;

    # getter for: Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;
    invoke-static {v12}, Lcom/android/server/am/DynamicHiddenApp;->access$200(Lcom/android/server/am/DynamicHiddenApp;)Lcom/android/internal/util/MemInfoReader;

    move-result-object v12

    if-eqz v12, :cond_145

    .line 456
    iget-object v12, v0, Lcom/android/server/am/DynamicHiddenApp$1;->this$0:Lcom/android/server/am/DynamicHiddenApp;

    # getter for: Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;
    invoke-static {v12}, Lcom/android/server/am/DynamicHiddenApp;->access$200(Lcom/android/server/am/DynamicHiddenApp;)Lcom/android/internal/util/MemInfoReader;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/util/MemInfoReader;->readLightMemInfo()V

    .line 457
    iget-object v12, v0, Lcom/android/server/am/DynamicHiddenApp$1;->this$0:Lcom/android/server/am/DynamicHiddenApp;

    # getter for: Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;
    invoke-static {v12}, Lcom/android/server/am/DynamicHiddenApp;->access$200(Lcom/android/server/am/DynamicHiddenApp;)Lcom/android/internal/util/MemInfoReader;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v12

    .line 458
    .local v12, "szFreeMem":J
    iget-object v14, v0, Lcom/android/server/am/DynamicHiddenApp$1;->this$0:Lcom/android/server/am/DynamicHiddenApp;

    # getter for: Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;
    invoke-static {v14}, Lcom/android/server/am/DynamicHiddenApp;->access$200(Lcom/android/server/am/DynamicHiddenApp;)Lcom/android/internal/util/MemInfoReader;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeLegacy()J

    move-result-wide v14

    .line 459
    .local v14, "szCachedMem":J
    iget-object v10, v0, Lcom/android/server/am/DynamicHiddenApp$1;->this$0:Lcom/android/server/am/DynamicHiddenApp;

    # getter for: Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;
    invoke-static {v10}, Lcom/android/server/am/DynamicHiddenApp;->access$200(Lcom/android/server/am/DynamicHiddenApp;)Lcom/android/internal/util/MemInfoReader;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/util/MemInfoReader;->getRbinTotalSize()J

    move-result-wide v16

    .line 460
    .local v16, "szRbinTotalMem":J
    iget-object v10, v0, Lcom/android/server/am/DynamicHiddenApp$1;->this$0:Lcom/android/server/am/DynamicHiddenApp;

    # getter for: Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;
    invoke-static {v10}, Lcom/android/server/am/DynamicHiddenApp;->access$200(Lcom/android/server/am/DynamicHiddenApp;)Lcom/android/internal/util/MemInfoReader;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/util/MemInfoReader;->getRbinAllocedSize()J

    move-result-wide v18

    .line 461
    .local v18, "szRbinAllocMem":J
    add-long v20, v12, v14

    sub-long v22, v16, v18

    sub-long v9, v20, v22

    .line 462
    .local v9, "szAvailableMem":J
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Available Mem: "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " DHA TH "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/am/DynamicHiddenApp;->mMinFreeMax:F
    invoke-static {}, Lcom/android/server/am/DynamicHiddenApp;->access$300()F

    move-result v1

    move-object/from16 v21, v6

    .end local v6    # "sCameraname":Ljava/lang/String;
    .local v21, "sCameraname":Ljava/lang/String;
    iget-object v6, v0, Lcom/android/server/am/DynamicHiddenApp$1;->this$0:Lcom/android/server/am/DynamicHiddenApp;

    # getter for: Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThresholdRate:F
    invoke-static {v6}, Lcom/android/server/am/DynamicHiddenApp;->access$400(Lcom/android/server/am/DynamicHiddenApp;)F

    move-result v6

    mul-float/2addr v1, v6

    move-wide/from16 v22, v12

    .end local v12    # "szFreeMem":J
    .local v22, "szFreeMem":J
    float-to-long v12, v1

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    # getter for: Lcom/android/server/am/DynamicHiddenApp;->mMinFreeMax:F
    invoke-static {}, Lcom/android/server/am/DynamicHiddenApp;->access$300()F

    move-result v1

    iget-object v6, v0, Lcom/android/server/am/DynamicHiddenApp$1;->this$0:Lcom/android/server/am/DynamicHiddenApp;

    # getter for: Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThresholdRate:F
    invoke-static {v6}, Lcom/android/server/am/DynamicHiddenApp;->access$400(Lcom/android/server/am/DynamicHiddenApp;)F

    move-result v6

    mul-float/2addr v1, v6

    float-to-long v11, v1

    cmp-long v1, v9, v11

    if-gez v1, :cond_177

    .line 465
    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    # setter for: Lcom/android/server/am/DynamicHiddenApp;->originCachedMin:I
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->access$502(I)I

    .line 466
    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    # setter for: Lcom/android/server/am/DynamicHiddenApp;->originEmptyMax:I
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->access$602(I)I

    .line 468
    const/4 v1, 0x2

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    .line 469
    sget v6, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    div-int/2addr v6, v1

    sget v11, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS:I

    if-le v6, v11, :cond_ff

    sget v6, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    div-int/2addr v6, v1

    goto :goto_101

    :cond_ff
    sget v6, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS:I

    :goto_101
    sput v6, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    .line 470
    iget-object v1, v0, Lcom/android/server/am/DynamicHiddenApp$1;->this$0:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v1}, Lcom/android/server/am/DynamicHiddenApp;->updateDefaultCachedMAX()V

    .line 471
    iget-object v1, v0, Lcom/android/server/am/DynamicHiddenApp$1;->this$0:Lcom/android/server/am/DynamicHiddenApp;

    const/4 v6, 0x0

    # setter for: Lcom/android/server/am/DynamicHiddenApp;->isOriginBG:Z
    invoke-static {v1, v6}, Lcom/android/server/am/DynamicHiddenApp;->access$102(Lcom/android/server/am/DynamicHiddenApp;Z)Z

    .line 473
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DHA: MIN_CACHED "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " from "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/am/DynamicHiddenApp;->originCachedMin:I
    invoke-static {}, Lcom/android/server/am/DynamicHiddenApp;->access$500()I

    move-result v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " / MAX_EMPTY "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v11, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    # getter for: Lcom/android/server/am/DynamicHiddenApp;->originEmptyMax:I
    invoke-static {}, Lcom/android/server/am/DynamicHiddenApp;->access$600()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 473
    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_177

    .line 455
    .end local v9    # "szAvailableMem":J
    .end local v14    # "szCachedMem":J
    .end local v16    # "szRbinTotalMem":J
    .end local v18    # "szRbinAllocMem":J
    .end local v21    # "sCameraname":Ljava/lang/String;
    .end local v22    # "szFreeMem":J
    .restart local v6    # "sCameraname":Ljava/lang/String;
    :cond_145
    move-object/from16 v21, v6

    .end local v6    # "sCameraname":Ljava/lang/String;
    .restart local v21    # "sCameraname":Ljava/lang/String;
    goto :goto_177

    .line 454
    .end local v21    # "sCameraname":Ljava/lang/String;
    .restart local v6    # "sCameraname":Ljava/lang/String;
    :cond_148
    move-object/from16 v21, v6

    .end local v6    # "sCameraname":Ljava/lang/String;
    .restart local v21    # "sCameraname":Ljava/lang/String;
    goto :goto_177

    .line 478
    .end local v21    # "sCameraname":Ljava/lang/String;
    .restart local v6    # "sCameraname":Ljava/lang/String;
    :cond_14b
    move-object/from16 v21, v6

    .end local v6    # "sCameraname":Ljava/lang/String;
    .restart local v21    # "sCameraname":Ljava/lang/String;
    const/4 v1, 0x3

    if-ne v2, v1, :cond_177

    .line 479
    iget-object v1, v0, Lcom/android/server/am/DynamicHiddenApp$1;->this$0:Lcom/android/server/am/DynamicHiddenApp;

    # getter for: Lcom/android/server/am/DynamicHiddenApp;->isOriginBG:Z
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->access$100(Lcom/android/server/am/DynamicHiddenApp;)Z

    move-result v1

    if-nez v1, :cond_177

    .line 480
    # getter for: Lcom/android/server/am/DynamicHiddenApp;->originCachedMin:I
    invoke-static {}, Lcom/android/server/am/DynamicHiddenApp;->access$500()I

    move-result v1

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    .line 481
    # getter for: Lcom/android/server/am/DynamicHiddenApp;->originEmptyMax:I
    invoke-static {}, Lcom/android/server/am/DynamicHiddenApp;->access$600()I

    move-result v1

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    .line 482
    iget-object v1, v0, Lcom/android/server/am/DynamicHiddenApp$1;->this$0:Lcom/android/server/am/DynamicHiddenApp;

    const/4 v6, 0x1

    # setter for: Lcom/android/server/am/DynamicHiddenApp;->isOriginBG:Z
    invoke-static {v1, v6}, Lcom/android/server/am/DynamicHiddenApp;->access$102(Lcom/android/server/am/DynamicHiddenApp;Z)Z

    .line 483
    iget-object v1, v0, Lcom/android/server/am/DynamicHiddenApp$1;->this$0:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v1}, Lcom/android/server/am/DynamicHiddenApp;->updateDefaultCachedMAX()V

    .line 485
    const-string v1, "DHA : Recovered"

    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_177

    .line 451
    .end local v21    # "sCameraname":Ljava/lang/String;
    .restart local v6    # "sCameraname":Ljava/lang/String;
    :cond_175
    move-object/from16 v21, v6

    .line 490
    .end local v6    # "sCameraname":Ljava/lang/String;
    :cond_177
    :goto_177
    const-wide/32 v6, 0x1d4c0

    cmp-long v1, v4, v6

    if-ltz v1, :cond_20e

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->CAMERA_DHA_VER:I

    const/4 v6, 0x2

    and-int/2addr v1, v6

    if-eqz v1, :cond_20e

    .line 491
    sget-object v1, Lcom/android/server/am/DynamicHiddenApp;->dha_cameraclientexcept_map:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20e

    const-string/jumbo v1, "vendor."

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_197

    goto/16 :goto_20e

    .line 494
    :cond_197
    const/4 v1, -0x1

    .line 495
    .local v1, "pid":I
    const/4 v6, -0x1

    .line 496
    .local v6, "appIndex":I
    sget-object v7, Lcom/android/server/am/DynamicHiddenApp;->dha_camera_map:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1b7

    .line 497
    sget-object v7, Lcom/android/server/am/DynamicHiddenApp;->dha_camera_map:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->size()I

    move-result v7

    const/16 v9, 0x64

    if-le v7, v9, :cond_1ac

    return-void

    .line 498
    :cond_1ac
    sget-object v7, Lcom/android/server/am/DynamicHiddenApp;->dha_camera_map:Ljava/util/LinkedHashMap;

    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v3, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c3

    .line 500
    :cond_1b7
    sget-object v7, Lcom/android/server/am/DynamicHiddenApp;->dha_camera_map:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 503
    :goto_1c3
    new-instance v7, Ljava/util/ArrayList;

    sget-object v9, Lcom/android/server/am/DynamicHiddenApp;->dha_camera_map:Ljava/util/LinkedHashMap;

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 504
    .local v7, "listKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 506
    if-nez v2, :cond_1d8

    .line 507
    invoke-static {v2, v1, v6}, Lcom/android/server/am/ProcessList;->setLmkdCameraKillBoost(III)V

    goto :goto_20b

    .line 508
    :cond_1d8
    # getter for: Lcom/android/server/am/DynamicHiddenApp;->prevCameraState:I
    invoke-static {}, Lcom/android/server/am/DynamicHiddenApp;->access$700()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1e6

    const/4 v9, 0x1

    if-ne v2, v9, :cond_1e7

    .line 509
    invoke-static {v2, v1, v6}, Lcom/android/server/am/ProcessList;->setLmkdCameraKillBoost(III)V

    goto :goto_20b

    .line 508
    :cond_1e6
    const/4 v9, 0x1

    .line 510
    :cond_1e7
    if-ne v2, v9, :cond_1ef

    .line 511
    add-int/lit8 v9, v2, 0xa

    invoke-static {v9, v1, v6}, Lcom/android/server/am/ProcessList;->setLmkdCameraKillBoost(III)V

    goto :goto_20b

    .line 512
    :cond_1ef
    # getter for: Lcom/android/server/am/DynamicHiddenApp;->prevCameraState:I
    invoke-static {}, Lcom/android/server/am/DynamicHiddenApp;->access$700()I

    move-result v10

    if-ne v10, v9, :cond_1fc

    const/4 v9, 0x2

    if-ne v2, v9, :cond_1fd

    .line 513
    invoke-static {v2, v1, v6}, Lcom/android/server/am/ProcessList;->setLmkdCameraKillBoost(III)V

    goto :goto_20b

    .line 512
    :cond_1fc
    const/4 v9, 0x2

    .line 514
    :cond_1fd
    if-ne v2, v9, :cond_205

    .line 515
    add-int/lit8 v9, v2, 0xa

    invoke-static {v9, v1, v6}, Lcom/android/server/am/ProcessList;->setLmkdCameraKillBoost(III)V

    goto :goto_20b

    .line 516
    :cond_205
    const/4 v9, 0x3

    if-ne v2, v9, :cond_20b

    .line 517
    invoke-static {v2, v1, v6}, Lcom/android/server/am/ProcessList;->setLmkdCameraKillBoost(III)V

    .line 519
    :cond_20b
    :goto_20b
    # setter for: Lcom/android/server/am/DynamicHiddenApp;->prevCameraState:I
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/DynamicHiddenApp;->access$702(I)I

    .line 522
    .end local v1    # "pid":I
    .end local v6    # "appIndex":I
    .end local v7    # "listKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_20e
    :goto_20e
    return-void
.end method
