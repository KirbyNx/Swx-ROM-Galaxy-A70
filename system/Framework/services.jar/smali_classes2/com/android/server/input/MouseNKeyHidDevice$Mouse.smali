.class Lcom/android/server/input/MouseNKeyHidDevice$Mouse;
.super Ljava/lang/Object;
.source "MouseNKeyHidDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/MouseNKeyHidDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Mouse"
.end annotation


# instance fields
.field private mBuffer:[B

.field private mId:B

.field final synthetic this$0:Lcom/android/server/input/MouseNKeyHidDevice;


# direct methods
.method private constructor <init>(Lcom/android/server/input/MouseNKeyHidDevice;)V
    .registers 2

    .line 1330
    iput-object p1, p0, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1331
    const/4 p1, 0x4

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->mBuffer:[B

    .line 1332
    const/4 p1, 0x2

    iput-byte p1, p0, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->mId:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/input/MouseNKeyHidDevice;Lcom/android/server/input/MouseNKeyHidDevice$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/input/MouseNKeyHidDevice;
    .param p2, "x1"    # Lcom/android/server/input/MouseNKeyHidDevice$1;

    .line 1330
    invoke-direct {p0, p1}, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;-><init>(Lcom/android/server/input/MouseNKeyHidDevice;)V

    return-void
.end method


# virtual methods
.method clear(Z)V
    .registers 7
    .param p1, "forceClear"    # Z

    .line 1335
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    iget-object v0, v0, Lcom/android/server/input/MouseNKeyHidDevice;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1336
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_18

    .line 1337
    :try_start_9
    iget-object v3, p0, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->mBuffer:[B

    aget-byte v3, v3, v2

    if-nez v3, :cond_11

    .line 1338
    monitor-exit v0

    return-void

    .line 1340
    :cond_11
    const-string v3, "MouseNKeyHidDevice"

    const-string v4, "Mouse need clear()."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    :cond_18
    iget-object v3, p0, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->mBuffer:[B

    aput-byte v2, v3, v2

    .line 1343
    iget-object v3, p0, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->mBuffer:[B

    aput-byte v2, v3, v1

    .line 1344
    iget-object v3, p0, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->mBuffer:[B

    const/4 v4, 0x2

    aput-byte v2, v3, v4

    .line 1345
    iget-object v3, p0, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->mBuffer:[B

    const/4 v4, 0x3

    aput-byte v2, v3, v4

    .line 1347
    iget-object v2, p0, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    iget-byte v3, p0, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->mId:B

    iget-object v4, p0, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->mBuffer:[B

    # invokes: Lcom/android/server/input/MouseNKeyHidDevice;->storeReportLocked(B[BZ)V
    invoke-static {v2, v3, v4, v1}, Lcom/android/server/input/MouseNKeyHidDevice;->access$2700(Lcom/android/server/input/MouseNKeyHidDevice;B[BZ)V
    :try_end_33
    .catchall {:try_start_9 .. :try_end_33} :catchall_52

    .line 1349
    :try_start_33
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;
    invoke-static {v1}, Lcom/android/server/input/MouseNKeyHidDevice;->access$600(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/server/input/MouseNKeyHidDevice;->access$800(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    iget-byte v3, p0, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->mId:B

    iget-object v4, p0, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->mBuffer:[B

    invoke-virtual {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothHidDevice;->sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z
    :try_end_46
    .catch Ljava/lang/NullPointerException; {:try_start_33 .. :try_end_46} :catch_47
    .catchall {:try_start_33 .. :try_end_46} :catchall_52

    .line 1352
    goto :goto_50

    .line 1350
    :catch_47
    move-exception v1

    .line 1351
    .local v1, "e":Ljava/lang/NullPointerException;
    :try_start_48
    const-string v2, "MouseNKeyHidDevice"

    const-string/jumbo v3, "ignore nullpointer exception "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_50
    monitor-exit v0

    .line 1354
    return-void

    .line 1353
    :catchall_52
    move-exception v1

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_48 .. :try_end_54} :catchall_52

    throw v1
.end method

.method mouseButtonDownLocked(BBI)V
    .registers 8
    .param p1, "dx"    # B
    .param p2, "dy"    # B
    .param p3, "whichbutton"    # I

    .line 1371
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mConnectionState:I
    invoke-static {v0}, Lcom/android/server/input/MouseNKeyHidDevice;->access$1500(Lcom/android/server/input/MouseNKeyHidDevice;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    .line 1372
    return-void

    .line 1374
    :cond_a
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->mBuffer:[B

    const/4 v2, 0x0

    aget-byte v3, v0, v2

    or-int/2addr v3, p3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1375
    const/4 v3, 0x1

    aput-byte v2, v0, v3

    .line 1376
    aput-byte v2, v0, v1

    .line 1378
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    iget-byte v2, p0, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->mId:B

    # invokes: Lcom/android/server/input/MouseNKeyHidDevice;->storeReportLocked(B[BZ)V
    invoke-static {v1, v2, v0, v3}, Lcom/android/server/input/MouseNKeyHidDevice;->access$2700(Lcom/android/server/input/MouseNKeyHidDevice;B[BZ)V

    .line 1380
    :try_start_1f
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;
    invoke-static {v0}, Lcom/android/server/input/MouseNKeyHidDevice;->access$600(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/server/input/MouseNKeyHidDevice;->access$800(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-byte v2, p0, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->mId:B

    iget-object v3, p0, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->mBuffer:[B

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothHidDevice;->sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z
    :try_end_32
    .catch Ljava/lang/NullPointerException; {:try_start_1f .. :try_end_32} :catch_33

    .line 1383
    goto :goto_3c

    .line 1381
    :catch_33
    move-exception v0

    .line 1382
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "MouseNKeyHidDevice"

    const-string/jumbo v2, "ignore nullpointer exception "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_3c
    return-void
.end method

.method mouseButtonUpLocked(BBI)V
    .registers 9
    .param p1, "dx"    # B
    .param p2, "dy"    # B
    .param p3, "whichbutton"    # I

    .line 1386
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mConnectionState:I
    invoke-static {v0}, Lcom/android/server/input/MouseNKeyHidDevice;->access$1500(Lcom/android/server/input/MouseNKeyHidDevice;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    .line 1387
    return-void

    .line 1389
    :cond_a
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->mBuffer:[B

    const/4 v2, 0x0

    aget-byte v3, v0, v2

    not-int v4, p3

    and-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1390
    const/4 v3, 0x1

    aput-byte v2, v0, v3

    .line 1391
    aput-byte v2, v0, v1

    .line 1393
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    iget-byte v2, p0, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->mId:B

    # invokes: Lcom/android/server/input/MouseNKeyHidDevice;->storeReportLocked(B[BZ)V
    invoke-static {v1, v2, v0, v3}, Lcom/android/server/input/MouseNKeyHidDevice;->access$2700(Lcom/android/server/input/MouseNKeyHidDevice;B[BZ)V

    .line 1395
    :try_start_20
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;
    invoke-static {v0}, Lcom/android/server/input/MouseNKeyHidDevice;->access$600(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/server/input/MouseNKeyHidDevice;->access$800(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-byte v2, p0, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->mId:B

    iget-object v3, p0, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->mBuffer:[B

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothHidDevice;->sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z
    :try_end_33
    .catch Ljava/lang/NullPointerException; {:try_start_20 .. :try_end_33} :catch_34

    .line 1398
    goto :goto_3d

    .line 1396
    :catch_34
    move-exception v0

    .line 1397
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "MouseNKeyHidDevice"

    const-string/jumbo v2, "ignore nullpointer exception "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_3d
    return-void
.end method

.method mouseMoveLocked(BB)V
    .registers 7
    .param p1, "dx"    # B
    .param p2, "dy"    # B

    .line 1357
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mConnectionState:I
    invoke-static {v0}, Lcom/android/server/input/MouseNKeyHidDevice;->access$1500(Lcom/android/server/input/MouseNKeyHidDevice;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    .line 1358
    return-void

    .line 1360
    :cond_a
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->mBuffer:[B

    const/4 v2, 0x1

    aput-byte p1, v0, v2

    .line 1361
    aput-byte p2, v0, v1

    .line 1363
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    iget-byte v3, p0, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->mId:B

    # invokes: Lcom/android/server/input/MouseNKeyHidDevice;->storeReportLocked(B[BZ)V
    invoke-static {v1, v3, v0, v2}, Lcom/android/server/input/MouseNKeyHidDevice;->access$2700(Lcom/android/server/input/MouseNKeyHidDevice;B[BZ)V

    .line 1365
    :try_start_18
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;
    invoke-static {v0}, Lcom/android/server/input/MouseNKeyHidDevice;->access$600(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/server/input/MouseNKeyHidDevice;->access$800(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-byte v2, p0, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->mId:B

    iget-object v3, p0, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->mBuffer:[B

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothHidDevice;->sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z
    :try_end_2b
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_2b} :catch_2c

    .line 1368
    goto :goto_35

    .line 1366
    :catch_2c
    move-exception v0

    .line 1367
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "MouseNKeyHidDevice"

    const-string/jumbo v2, "ignore nullpointer exception "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_35
    return-void
.end method

.method mouseScrollLocked(B)V
    .registers 8
    .param p1, "dy"    # B

    .line 1401
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mConnectionState:I
    invoke-static {v0}, Lcom/android/server/input/MouseNKeyHidDevice;->access$1500(Lcom/android/server/input/MouseNKeyHidDevice;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    .line 1402
    return-void

    .line 1404
    :cond_a
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->mBuffer:[B

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-byte v3, v0, v2

    .line 1405
    aput-byte v3, v0, v1

    .line 1406
    const/4 v1, 0x3

    aput-byte p1, v0, v1

    .line 1408
    iget-object v4, p0, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    iget-byte v5, p0, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->mId:B

    # invokes: Lcom/android/server/input/MouseNKeyHidDevice;->storeReportLocked(B[BZ)V
    invoke-static {v4, v5, v0, v2}, Lcom/android/server/input/MouseNKeyHidDevice;->access$2700(Lcom/android/server/input/MouseNKeyHidDevice;B[BZ)V

    .line 1410
    :try_start_1c
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;
    invoke-static {v0}, Lcom/android/server/input/MouseNKeyHidDevice;->access$600(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/server/input/MouseNKeyHidDevice;->access$800(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    iget-byte v4, p0, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->mId:B

    iget-object v5, p0, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->mBuffer:[B

    invoke-virtual {v0, v2, v4, v5}, Landroid/bluetooth/BluetoothHidDevice;->sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z
    :try_end_2f
    .catch Ljava/lang/NullPointerException; {:try_start_1c .. :try_end_2f} :catch_30

    .line 1413
    goto :goto_39

    .line 1411
    :catch_30
    move-exception v0

    .line 1412
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "MouseNKeyHidDevice"

    const-string/jumbo v4, "ignore nullpointer exception "

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_39
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$Mouse;->mBuffer:[B

    aput-byte v3, v0, v1

    .line 1415
    return-void
.end method
