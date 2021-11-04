.class Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;
.super Ljava/lang/Object;
.source "MouseNKeyHidDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/MouseNKeyHidDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Keyboard"
.end annotation


# static fields
.field private static final MODIFIER_BASE:B = -0x20t

.field private static final MODIFIER_COUNT:B = 0x8t


# instance fields
.field private mBuffer:[B

.field private mId:B

.field final synthetic this$0:Lcom/android/server/input/MouseNKeyHidDevice;


# direct methods
.method private constructor <init>(Lcom/android/server/input/MouseNKeyHidDevice;)V
    .registers 2

    .line 1247
    iput-object p1, p0, Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1248
    const/16 p1, 0x8

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;->mBuffer:[B

    .line 1249
    const/4 p1, 0x1

    iput-byte p1, p0, Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;->mId:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/input/MouseNKeyHidDevice;Lcom/android/server/input/MouseNKeyHidDevice$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/input/MouseNKeyHidDevice;
    .param p2, "x1"    # Lcom/android/server/input/MouseNKeyHidDevice$1;

    .line 1247
    invoke-direct {p0, p1}, Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;-><init>(Lcom/android/server/input/MouseNKeyHidDevice;)V

    return-void
.end method


# virtual methods
.method clear(Z)V
    .registers 9
    .param p1, "forceClear"    # Z

    .line 1255
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    iget-object v0, v0, Lcom/android/server/input/MouseNKeyHidDevice;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1256
    const/16 v1, 0x8

    const/4 v2, 0x1

    if-eq p1, v2, :cond_24

    .line 1257
    const/4 v3, 0x0

    .line 1258
    .local v3, "needClear":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_c
    if-ge v4, v1, :cond_20

    .line 1259
    :try_start_e
    iget-object v5, p0, Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;->mBuffer:[B

    aget-byte v5, v5, v4

    if-eqz v5, :cond_1d

    .line 1260
    const/4 v3, 0x1

    .line 1261
    const-string v5, "MouseNKeyHidDevice"

    const-string v6, "Keyboard need clear()."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    goto :goto_20

    .line 1258
    :cond_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 1265
    .end local v4    # "i":I
    :cond_20
    :goto_20
    if-eq v3, v2, :cond_24

    .line 1266
    monitor-exit v0

    return-void

    .line 1269
    .end local v3    # "needClear":Z
    :cond_24
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_25
    if-ge v3, v1, :cond_2f

    .line 1270
    iget-object v4, p0, Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;->mBuffer:[B

    const/4 v5, 0x0

    aput-byte v5, v4, v3

    .line 1269
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 1272
    .end local v3    # "i":I
    :cond_2f
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    iget-byte v3, p0, Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;->mId:B

    iget-object v4, p0, Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;->mBuffer:[B

    # invokes: Lcom/android/server/input/MouseNKeyHidDevice;->storeReportLocked(B[BZ)V
    invoke-static {v1, v3, v4, v2}, Lcom/android/server/input/MouseNKeyHidDevice;->access$2700(Lcom/android/server/input/MouseNKeyHidDevice;B[BZ)V
    :try_end_38
    .catchall {:try_start_e .. :try_end_38} :catchall_57

    .line 1274
    :try_start_38
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;
    invoke-static {v1}, Lcom/android/server/input/MouseNKeyHidDevice;->access$600(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/server/input/MouseNKeyHidDevice;->access$800(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    iget-byte v3, p0, Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;->mId:B

    iget-object v4, p0, Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;->mBuffer:[B

    invoke-virtual {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothHidDevice;->sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z
    :try_end_4b
    .catch Ljava/lang/NullPointerException; {:try_start_38 .. :try_end_4b} :catch_4c
    .catchall {:try_start_38 .. :try_end_4b} :catchall_57

    .line 1277
    goto :goto_55

    .line 1275
    :catch_4c
    move-exception v1

    .line 1276
    .local v1, "e":Ljava/lang/NullPointerException;
    :try_start_4d
    const-string v2, "MouseNKeyHidDevice"

    const-string/jumbo v3, "ignore nullpointer exception "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_55
    monitor-exit v0

    .line 1279
    return-void

    .line 1278
    :catchall_57
    move-exception v1

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_4d .. :try_end_59} :catchall_57

    throw v1
.end method

.method keyDownLocked(B)V
    .registers 7
    .param p1, "keycode"    # B

    .line 1282
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mConnectionState:I
    invoke-static {v0}, Lcom/android/server/input/MouseNKeyHidDevice;->access$1500(Lcom/android/server/input/MouseNKeyHidDevice;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    .line 1283
    return-void

    .line 1285
    :cond_a
    const/16 v0, -0x20

    const/4 v1, 0x1

    if-lt p1, v0, :cond_21

    const/16 v0, -0x18

    if-gt p1, v0, :cond_21

    .line 1286
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;->mBuffer:[B

    const/4 v2, 0x0

    aget-byte v3, v0, v2

    add-int/lit8 v4, p1, 0x20

    shl-int v4, v1, v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    goto :goto_43

    .line 1287
    :cond_21
    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_32

    .line 1288
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;->mBuffer:[B

    aget-byte v2, v0, v1

    and-int/lit8 v3, p1, 0x7

    shl-int v3, v1, v3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_43

    .line 1290
    :cond_32
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_33
    const/16 v2, 0x8

    if-ge v0, v2, :cond_43

    .line 1291
    iget-object v2, p0, Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;->mBuffer:[B

    aget-byte v3, v2, v0

    if-nez v3, :cond_40

    .line 1292
    aput-byte p1, v2, v0

    .line 1293
    goto :goto_43

    .line 1290
    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 1298
    .end local v0    # "i":I
    :cond_43
    :goto_43
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    iget-byte v2, p0, Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;->mId:B

    iget-object v3, p0, Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;->mBuffer:[B

    # invokes: Lcom/android/server/input/MouseNKeyHidDevice;->storeReportLocked(B[BZ)V
    invoke-static {v0, v2, v3, v1}, Lcom/android/server/input/MouseNKeyHidDevice;->access$2700(Lcom/android/server/input/MouseNKeyHidDevice;B[BZ)V

    .line 1300
    :try_start_4c
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;
    invoke-static {v0}, Lcom/android/server/input/MouseNKeyHidDevice;->access$600(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/server/input/MouseNKeyHidDevice;->access$800(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-byte v2, p0, Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;->mId:B

    iget-object v3, p0, Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;->mBuffer:[B

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothHidDevice;->sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z
    :try_end_5f
    .catch Ljava/lang/NullPointerException; {:try_start_4c .. :try_end_5f} :catch_60

    .line 1303
    goto :goto_69

    .line 1301
    :catch_60
    move-exception v0

    .line 1302
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "MouseNKeyHidDevice"

    const-string/jumbo v2, "ignore nullpointer exception "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_69
    return-void
.end method

.method keyUpLocked(B)V
    .registers 7
    .param p1, "keycode"    # B

    .line 1306
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mConnectionState:I
    invoke-static {v0}, Lcom/android/server/input/MouseNKeyHidDevice;->access$1500(Lcom/android/server/input/MouseNKeyHidDevice;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    .line 1307
    return-void

    .line 1309
    :cond_a
    const/4 v0, 0x0

    const/16 v1, -0x20

    const/4 v2, 0x1

    if-lt p1, v1, :cond_22

    const/16 v1, -0x18

    if-gt p1, v1, :cond_22

    .line 1310
    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;->mBuffer:[B

    aget-byte v3, v1, v0

    add-int/lit8 v4, p1, 0x20

    shl-int v4, v2, v4

    not-int v4, v4

    and-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    goto :goto_44

    .line 1311
    :cond_22
    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_34

    .line 1312
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;->mBuffer:[B

    aget-byte v1, v0, v2

    and-int/lit8 v3, p1, 0x7

    shl-int v3, v2, v3

    not-int v3, v3

    and-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    goto :goto_44

    .line 1314
    :cond_34
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_35
    const/16 v3, 0x8

    if-ge v1, v3, :cond_44

    .line 1315
    iget-object v3, p0, Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;->mBuffer:[B

    aget-byte v4, v3, v1

    if-ne v4, p1, :cond_41

    .line 1316
    aput-byte v0, v3, v1

    .line 1314
    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 1322
    .end local v1    # "i":I
    :cond_44
    :goto_44
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    iget-byte v1, p0, Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;->mId:B

    iget-object v3, p0, Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;->mBuffer:[B

    # invokes: Lcom/android/server/input/MouseNKeyHidDevice;->storeReportLocked(B[BZ)V
    invoke-static {v0, v1, v3, v2}, Lcom/android/server/input/MouseNKeyHidDevice;->access$2700(Lcom/android/server/input/MouseNKeyHidDevice;B[BZ)V

    .line 1324
    :try_start_4d
    iget-object v0, p0, Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;
    invoke-static {v0}, Lcom/android/server/input/MouseNKeyHidDevice;->access$600(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    # getter for: Lcom/android/server/input/MouseNKeyHidDevice;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/server/input/MouseNKeyHidDevice;->access$800(Lcom/android/server/input/MouseNKeyHidDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-byte v2, p0, Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;->mId:B

    iget-object v3, p0, Lcom/android/server/input/MouseNKeyHidDevice$Keyboard;->mBuffer:[B

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothHidDevice;->sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z
    :try_end_60
    .catch Ljava/lang/NullPointerException; {:try_start_4d .. :try_end_60} :catch_61

    .line 1327
    goto :goto_6a

    .line 1325
    :catch_61
    move-exception v0

    .line 1326
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "MouseNKeyHidDevice"

    const-string/jumbo v2, "ignore nullpointer exception "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_6a
    return-void
.end method
