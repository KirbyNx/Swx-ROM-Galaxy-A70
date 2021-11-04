.class final Lcom/android/server/PACMService$PACServiceSocketThread;
.super Ljava/lang/Object;
.source "PACMService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PACMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PACServiceSocketThread"
.end annotation


# static fields
.field private static final PAC_SERVICE_SOCKET_NAME:Ljava/lang/String; = "/dev/socket/pacm/pacmservice"

.field private static final PROD_DEV_PROPERTY:Ljava/lang/String; = "ro.boot.em.status"

.field private static final PROD_DEV_PROPERTY_STATE_DEV:Ljava/lang/String; = "0x1"

.field private static final PROD_DEV_PROPERTY_STATE_USR:Ljava/lang/String; = "0x0"

.field private static final PROD_DEV_PROPERTY_STATE_USR_WITH_EM:Ljava/lang/String; = "0x2"

.field private static final THREAD_TAG:Ljava/lang/String; = "PACMSOCKET"


# instance fields
.field private buffer:[B

.field private mLocalClientSocket:Landroid/net/LocalSocket;

.field private mLocalServerSocket:Landroid/net/LocalServerSocket;

.field private mLocalSocket:Landroid/net/LocalSocket;

.field final synthetic this$0:Lcom/android/server/PACMService;


# direct methods
.method private constructor <init>(Lcom/android/server/PACMService;)V
    .registers 2

    .line 242
    iput-object p1, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PACMService;Lcom/android/server/PACMService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/PACMService;
    .param p2, "x1"    # Lcom/android/server/PACMService$1;

    .line 242
    invoke-direct {p0, p1}, Lcom/android/server/PACMService$PACServiceSocketThread;-><init>(Lcom/android/server/PACMService;)V

    return-void
.end method

.method private checkAtdDdex()I
    .registers 7

    .line 323
    const/4 v0, 0x0

    .line 324
    .local v0, "atd_ddex":[B
    const-string v1, ""

    .line 325
    .local v1, "str_atdddex":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->buffer:[B

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/android/server/PACMService$PAC_Packet;->getItem([BI)[B

    move-result-object v0

    .line 326
    const/4 v2, 0x0

    const-string v3, "PACMSOCKET"

    if-nez v0, :cond_15

    .line 327
    const-string v4, "atd_ddex is null !!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    return v2

    .line 330
    :cond_15
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v1, v4

    .line 331
    const-string v4, "ATD"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 332
    const-string v2, "This cmd is from ATD"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/4 v2, 0x1

    return v2

    .line 335
    :cond_30
    const-string v4, "DDEX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 336
    const-string v2, "This cmd is from DDEX"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const/4 v2, 0x2

    return v2

    .line 339
    :cond_3f
    return v2
.end method

.method private checkClassStatus(I)I
    .registers 8
    .param p1, "mode"    # I

    .line 277
    const/4 v0, 0x0

    .line 279
    .local v0, "ret":I
    iget-object v1, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    # getter for: Lcom/android/server/PACMService;->mCache:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/server/PACMService;->access$700(Lcom/android/server/PACMService;)Ljava/util/HashSet;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MODE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "PACMSOCKET"

    if-eqz v1, :cond_3d

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mode("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") is already cached"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v0, 0x1

    goto/16 :goto_c9

    .line 283
    :cond_3d
    new-instance v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    iget-object v4, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    # getter for: Lcom/android/server/PACMService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/PACMService;->access$900(Lcom/android/server/PACMService;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;-><init>(Landroid/content/Context;)V

    .line 284
    .local v1, "emm":Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;
    invoke-direct {p0}, Lcom/android/server/PACMService$PACServiceSocketThread;->checkEmState()Z

    move-result v4

    if-eqz v4, :cond_a2

    invoke-virtual {v1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_a2

    .line 285
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Call getStatus("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-virtual {v1, p1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->getStatus(I)I

    move-result v0

    .line 287
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getStatus ret : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/4 v2, 0x1

    if-ne v0, v2, :cond_c9

    .line 290
    iget-object v2, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    # getter for: Lcom/android/server/PACMService;->mCache:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/server/PACMService;->access$700(Lcom/android/server/PACMService;)Ljava/util/HashSet;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_c9

    .line 293
    :cond_a2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tstate : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    .line 294
    # getter for: Lcom/android/server/PACMService;->mEmTokenState:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/PACMService;->access$500(Lcom/android/server/PACMService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", em connected : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->isConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 293
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    .end local v1    # "emm":Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;
    :cond_c9
    :goto_c9
    return v0
.end method

.method private checkEmState()Z
    .registers 3

    .line 269
    iget-object v0, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    # getter for: Lcom/android/server/PACMService;->mEmTokenState:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/PACMService;->access$500(Lcom/android/server/PACMService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    # getter for: Lcom/android/server/PACMService;->mEmTokenState:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/PACMService;->access$500(Lcom/android/server/PACMService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    # getter for: Lcom/android/server/PACMService;->mEmTokenState:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/PACMService;->access$500(Lcom/android/server/PACMService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_2d

    .line 273
    :cond_2b
    const/4 v0, 0x0

    return v0

    .line 270
    :cond_2d
    :goto_2d
    const/4 v0, 0x1

    return v0
.end method

.method private executeCommand(I)[B
    .registers 16
    .param p1, "buf_len"    # I

    .line 349
    iget-object v0, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    # getter for: Lcom/android/server/PACMService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/PACMService;->access$600(Lcom/android/server/PACMService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 350
    const/4 v1, 0x0

    .line 351
    .local v1, "emRet":I
    const/4 v2, 0x0

    .line 352
    .local v2, "result":[B
    const/4 v3, 0x0

    .line 353
    .local v3, "at_cmd":[B
    :try_start_a
    const-string v4, ""

    .line 354
    .local v4, "str_cmd":Ljava/lang/String;
    const/4 v5, 0x0

    .line 356
    .local v5, "check_attribute":Z
    iget-object v6, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->buffer:[B

    const/4 v7, 0x0

    if-eqz v6, :cond_27e

    if-nez p1, :cond_16

    goto/16 :goto_27e

    .line 361
    :cond_16
    const-string v6, "PACMSOCKET"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "START - executeCommand :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_a .. :try_end_2c} :catchall_29b

    .line 364
    :try_start_2c
    iget-object v6, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->buffer:[B

    invoke-static {v6}, Lcom/android/server/PACMService$PAC_Packet;->getVersion([B)I

    move-result v6

    .line 365
    .local v6, "version":I
    const/4 v8, 0x1

    if-eq v6, v8, :cond_52

    .line 366
    const-string v8, "PACMSOCKET"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Version is abnormal("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_50} :catch_278
    .catchall {:try_start_2c .. :try_end_50} :catchall_29b

    .line 367
    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_29b

    return-object v7

    .line 370
    :cond_52
    :try_start_52
    iget-object v7, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->buffer:[B

    invoke-static {v7}, Lcom/android/server/PACMService$PAC_Packet;->getCommand([B)I

    move-result v7

    .line 371
    .local v7, "cmd":I
    const-string v9, "PACMSOCKET"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Command : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    if-eqz v7, :cond_19d

    if-eq v7, v8, :cond_92

    .line 467
    const-string v9, "PACMSOCKET"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown command("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const v1, -0xffffffd

    goto/16 :goto_1f9

    .line 393
    :cond_92
    iget-object v9, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->buffer:[B

    const/4 v10, 0x2

    invoke-static {v9, v10}, Lcom/android/server/PACMService$PAC_Packet;->getItem([BI)[B

    move-result-object v9

    move-object v3, v9

    .line 394
    const-string v9, "PACMSOCKET"

    const-string v10, "PAC_Packet.PAC_PACKET_CMD_AT_CMD_CHECK:"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    if-eqz v3, :cond_1f9

    .line 397
    new-instance v9, Ljava/lang/String;

    const-string v10, "UTF-8"

    invoke-static {v10}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v10

    invoke-direct {v9, v3, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v4, v9

    .line 398
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 399
    const-string v9, "PACMSOCKET"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cmd : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v9, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    # getter for: Lcom/android/server/PACMService;->mAtMap:Ljava/util/LinkedHashMap;
    invoke-static {v9}, Lcom/android/server/PACMService;->access$1000(Lcom/android/server/PACMService;)Ljava/util/LinkedHashMap;

    move-result-object v9

    invoke-static {v9, v4}, Lcom/samsung/android/service/ProtectedATCommand/PACMClassifier;->getCommand(Ljava/util/LinkedHashMap;Ljava/lang/String;)Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;

    move-result-object v9

    .line 402
    .local v9, "atCmd":Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;
    if-nez v9, :cond_f1

    .line 403
    invoke-direct {p0}, Lcom/android/server/PACMService$PACServiceSocketThread;->isDevAndNoship()Z

    move-result v10

    if-eqz v10, :cond_ed

    invoke-direct {p0}, Lcom/android/server/PACMService$PACServiceSocketThread;->isForceTestUser()Z

    move-result v10

    if-nez v10, :cond_ed

    .line 404
    const-string v10, "PACMSOCKET"

    const-string v11, "This command is unregistered. But it is temporarily allowed."

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const/16 v1, 0xa1

    goto/16 :goto_1f9

    .line 407
    :cond_ed
    const/16 v1, 0xaf

    .line 409
    goto/16 :goto_1f9

    .line 412
    :cond_f1
    sget v10, Landroid/os/Build$VERSION;->FIRST_SDK_INT:I

    const/16 v11, 0x1c

    if-ge v10, v11, :cond_10e

    .line 413
    invoke-virtual {v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->getType()I

    move-result v10

    const/16 v11, 0xa3

    if-ne v10, v11, :cond_10a

    .line 414
    const-string v10, "PACMSOCKET"

    const-string v11, "This Command is PROTECTED_AT_COMMAND_OPTION1"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/16 v1, 0xb1

    goto/16 :goto_1f9

    .line 417
    :cond_10a
    const/16 v1, 0xa1

    .line 419
    goto/16 :goto_1f9

    .line 422
    :cond_10e
    invoke-virtual {v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->getType()I

    move-result v10

    const/16 v12, 0xa1

    packed-switch v10, :pswitch_data_29e

    .line 453
    const-string v10, "PACMSOCKET"

    goto :goto_17e

    .line 425
    :pswitch_11a
    const-string v10, "PACMSOCKET"

    const-string v13, "This Command is PROTECTED_AT_COMMAND"

    invoke-static {v10, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-direct {p0, v11}, Lcom/android/server/PACMService$PACServiceSocketThread;->checkClassStatus(I)I

    move-result v10

    if-ne v8, v10, :cond_131

    .line 427
    const-string v10, "PACMSOCKET"

    const-string v11, "This Command is ALLOWED_PROTECTED_AT_COMMAND"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const/16 v1, 0xb0

    goto :goto_185

    .line 430
    :cond_131
    const-string v10, "PACMSOCKET"

    const-string v11, "This Command is NOT_ALLOWED_PROTECTED_AT_COMMAND"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const/16 v1, 0xb1

    .line 433
    goto :goto_185

    .line 449
    :pswitch_13b
    const-string v10, "PACMSOCKET"

    const-string v11, "This Command is CP_AT_COMMAND"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const/16 v1, 0xa2

    .line 451
    goto :goto_185

    .line 435
    :pswitch_145
    const-string v10, "PACMSOCKET"

    const-string v13, "This Command is USER_OPEN_AT_COMMAND"

    invoke-static {v10, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const/16 v1, 0xa1

    .line 437
    invoke-direct {p0, v11}, Lcom/android/server/PACMService$PACServiceSocketThread;->checkClassStatus(I)I

    move-result v10

    if-eq v8, v10, :cond_185

    .line 438
    invoke-direct {p0}, Lcom/android/server/PACMService$PACServiceSocketThread;->isSecureLock()Z

    move-result v10

    invoke-direct {p0}, Lcom/android/server/PACMService$PACServiceSocketThread;->checkAtdDdex()I

    move-result v11

    invoke-static {v9, v10, v11}, Lcom/samsung/android/service/ProtectedATCommand/PACMClassifier;->checkAttribute(Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;ZI)I

    move-result v10

    move v1, v10

    .line 439
    const/16 v10, 0xc3

    if-ne v1, v10, :cond_173

    sget-boolean v10, Lcom/android/server/PACMService;->mGalaxyDiag:Z

    if-ne v10, v8, :cond_173

    .line 440
    const-string v10, "PACMSOCKET"

    const-string v11, "This Command is now open becauese there is Galaxy Diag Tool"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const/16 v1, 0xa1

    goto :goto_185

    .line 442
    :cond_173
    if-eq v1, v12, :cond_185

    .line 443
    const-string v10, "PACMSOCKET"

    const-string v11, "This Command is not USER_OPEN_AT_COMMAND because of attribute"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const/4 v5, 0x1

    goto :goto_185

    .line 453
    :goto_17e
    const-string v11, "This Command is not registered"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const/16 v1, 0xaf

    .line 458
    :cond_185
    :goto_185
    if-eq v1, v12, :cond_19c

    .line 459
    invoke-direct {p0}, Lcom/android/server/PACMService$PACServiceSocketThread;->isDevAndNoship()Z

    move-result v10

    if-eqz v10, :cond_19c

    invoke-direct {p0}, Lcom/android/server/PACMService$PACServiceSocketThread;->isForceTestUser()Z

    move-result v10

    if-nez v10, :cond_19c

    .line 460
    const-string v10, "PACMSOCKET"

    const-string v11, "This command is be temporarily allowed. but it will be blocked"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const/16 v1, 0xa1

    .line 464
    .end local v9    # "atCmd":Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;
    :cond_19c
    goto :goto_1f9

    .line 375
    :cond_19d
    const/4 v9, -0x1

    .line 376
    .local v9, "parsed_mode":I
    iget-object v10, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->buffer:[B

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/android/server/PACMService$PAC_Packet;->getItem([BI)[B

    move-result-object v10

    .line 378
    .local v10, "modes":[B
    if-eqz v10, :cond_1f1

    .line 379
    invoke-virtual {p0, v10}, Lcom/android/server/PACMService$PACServiceSocketThread;->BigEndianToLittleEndian([B)[B

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/server/PACMService$PACServiceSocketThread;->ByteToInt([B)I

    move-result v11

    move v9, v11

    .line 380
    const-string v11, "PACMSOCKET"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "parsed_mode("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    if-gez v9, :cond_1eb

    .line 382
    const-string v11, "PACMSOCKET"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to parse mode("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const/4 v1, 0x0

    goto :goto_1f9

    .line 385
    :cond_1eb
    invoke-direct {p0, v9}, Lcom/android/server/PACMService$PACServiceSocketThread;->checkClassStatus(I)I

    move-result v11

    move v1, v11

    goto :goto_1f9

    .line 388
    :cond_1f1
    const-string v11, "PACMSOCKET"

    const-string v12, "Failed to get mode number"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    nop

    .line 472
    .end local v9    # "parsed_mode":I
    .end local v10    # "modes":[B
    :cond_1f9
    :goto_1f9
    if-nez v5, :cond_21f

    # getter for: Lcom/android/server/PACMService;->mIsJDMDevice:Z
    invoke-static {}, Lcom/android/server/PACMService;->access$1100()Z

    move-result v9

    if-eqz v9, :cond_21f

    .line 473
    const-string v9, "PACMSOCKET"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "open "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " in PACM because of JDM device"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const/16 v1, 0xa1

    .line 477
    :cond_21f
    invoke-static {v4}, Lcom/samsung/android/service/ProtectedATCommand/PACMClassifier;->checkSpecialCommand(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v8, :cond_243

    .line 478
    const-string v9, "PACMSOCKET"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "open "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " in PACM because of Special command"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const/16 v1, 0xa1

    .line 481
    :cond_243
    const-string v9, "PACMSOCKET"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "END - executeCommand :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-static {v8}, Lcom/android/server/PACMService$PAC_Packet;->initPacket(I)[B

    move-result-object v8

    move-object v2, v8

    .line 484
    if-eqz v2, :cond_277

    .line 485
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x3

    invoke-static {v2, v8, v9}, Lcom/android/server/PACMService$PAC_Packet;->putItem([BLjava/lang/Object;I)[B

    move-result-object v8
    :try_end_276
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_276} :catch_278
    .catchall {:try_start_52 .. :try_end_276} :catchall_29b

    move-object v2, v8

    .line 489
    .end local v6    # "version":I
    .end local v7    # "cmd":I
    :cond_277
    goto :goto_27c

    .line 487
    :catch_278
    move-exception v6

    .line 488
    .local v6, "e":Ljava/lang/Exception;
    :try_start_279
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 491
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_27c
    monitor-exit v0

    return-object v2

    .line 357
    :cond_27e
    :goto_27e
    const-string v6, "PACMSOCKET"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "buffer is abnormal("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    monitor-exit v0

    return-object v7

    .line 492
    .end local v1    # "emRet":I
    .end local v2    # "result":[B
    .end local v3    # "at_cmd":[B
    .end local v4    # "str_cmd":Ljava/lang/String;
    .end local v5    # "check_attribute":Z
    :catchall_29b
    move-exception v1

    monitor-exit v0
    :try_end_29d
    .catchall {:try_start_279 .. :try_end_29d} :catchall_29b

    throw v1

    :pswitch_data_29e
    .packed-switch 0xa1
        :pswitch_145
        :pswitch_13b
        :pswitch_11a
        :pswitch_11a
    .end packed-switch
.end method

.method private isDevAndNoship()Z
    .registers 4

    .line 311
    const/4 v0, 0x0

    .line 312
    .local v0, "is_dev_device":Z
    const-string/jumbo v1, "ro.boot.em.status"

    const-string v2, "0x1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 314
    .local v1, "device_status":Ljava/lang/String;
    const-string v2, "0x0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 315
    const-string v2, "0x2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 316
    const/4 v0, 0x1

    .line 319
    :cond_1b
    return v0
.end method

.method private isForceTestUser()Z
    .registers 4

    .line 302
    const-string/jumbo v0, "security.pacm.test"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 304
    .local v0, "is_test_build":Z
    if-eqz v0, :cond_19

    .line 305
    const-string v1, "PACMSOCKET"

    const-string v2, "[AT command Test Mode] Simulate user device"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_19
    return v0
.end method

.method private isSecureLock()Z
    .registers 4

    .line 343
    const-string/jumbo v0, "sys.locksecured"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, "secureLock":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "secureLock : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PACMSOCKET"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    if-eqz v0, :cond_2b

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const/4 v1, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    :goto_2c
    return v1
.end method


# virtual methods
.method public BigEndianToLittleEndian([B)[B
    .registers 4
    .param p1, "buffer"    # [B

    .line 261
    array-length v0, p1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 262
    .local v0, "bBuffer":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 263
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 265
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public ByteToInt([B)I
    .registers 3
    .param p1, "buffer"    # [B

    .line 258
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public run()V
    .registers 9

    .line 498
    const-string v0, "PACMSOCKET"

    :try_start_2
    new-instance v1, Landroid/net/LocalSocket;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/net/LocalSocket;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->mLocalSocket:Landroid/net/LocalSocket;

    .line 499
    new-instance v2, Landroid/net/LocalSocketAddress;

    const-string v3, "/dev/socket/pacm/pacmservice"

    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v2, v3, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->bind(Landroid/net/LocalSocketAddress;)V

    .line 500
    new-instance v1, Landroid/net/LocalServerSocket;

    iget-object v2, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/LocalServerSocket;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v1, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->mLocalServerSocket:Landroid/net/LocalServerSocket;

    .line 501
    const/16 v1, 0x200

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->buffer:[B
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_29} :catch_d7

    .line 514
    nop

    .line 516
    :goto_2a
    iget-object v1, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->mLocalServerSocket:Landroid/net/LocalServerSocket;

    if-eqz v1, :cond_ad

    .line 518
    :try_start_2e
    const-string v1, "[v.1] Ready to connect."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v1, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->mLocalServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v1}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->mLocalClientSocket:Landroid/net/LocalSocket;

    .line 521
    iget-object v2, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->mLocalSocket:Landroid/net/LocalSocket;

    if-eqz v2, :cond_8c

    .line 522
    invoke-virtual {v1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 523
    .local v1, "is":Ljava/io/InputStream;
    iget-object v2, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->mLocalClientSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 524
    .local v2, "os":Ljava/io/OutputStream;
    iget-object v3, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->mLocalClientSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getPeerCredentials()Landroid/net/Credentials;

    move-result-object v3

    .line 526
    .local v3, "cred":Landroid/net/Credentials;
    iget-object v4, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->buffer:[B

    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 527
    .local v4, "readLen":I
    invoke-direct {p0, v4}, Lcom/android/server/PACMService$PACServiceSocketThread;->executeCommand(I)[B

    move-result-object v5

    .line 528
    .local v5, "ret":[B
    if-nez v5, :cond_66

    .line 529
    const-string/jumbo v6, "ret is null"

    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const/4 v6, -0x1

    invoke-virtual {v2, v6}, Ljava/io/OutputStream;->write(I)V

    goto :goto_69

    .line 532
    :cond_66
    invoke-virtual {v2, v5}, Ljava/io/OutputStream;->write([B)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_69} :catch_92

    .line 536
    :goto_69
    :try_start_69
    iget-object v6, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->mLocalClientSocket:Landroid/net/LocalSocket;

    invoke-virtual {v6}, Landroid/net/LocalSocket;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6e} :catch_77
    .catchall {:try_start_69 .. :try_end_6e} :catchall_75

    .line 541
    :try_start_6e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 542
    :goto_71
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_74} :catch_92

    .line 543
    goto :goto_8c

    .line 541
    :catchall_75
    move-exception v6

    goto :goto_84

    .line 537
    :catch_77
    move-exception v6

    .line 538
    .local v6, "e":Ljava/io/IOException;
    :try_start_78
    const-string v7, "Failed to close socket."

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_80
    .catchall {:try_start_78 .. :try_end_80} :catchall_75

    .line 541
    .end local v6    # "e":Ljava/io/IOException;
    :try_start_80
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_71

    :goto_84
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 542
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 543
    nop

    .end local p0    # "this":Lcom/android/server/PACMService$PACServiceSocketThread;
    throw v6

    .line 545
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "os":Ljava/io/OutputStream;
    .end local v3    # "cred":Landroid/net/Credentials;
    .end local v4    # "readLen":I
    .end local v5    # "ret":[B
    .restart local p0    # "this":Lcom/android/server/PACMService$PACServiceSocketThread;
    :cond_8c
    :goto_8c
    const-string v1, "Disconnected."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_91} :catch_92

    goto :goto_ab

    .line 546
    :catch_92
    move-exception v1

    .line 547
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Socket connection may be closed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_ab
    goto/16 :goto_2a

    .line 552
    :cond_ad
    if-eqz v1, :cond_bd

    .line 553
    :try_start_af
    invoke-virtual {v1}, Landroid/net/LocalServerSocket;->close()V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b2} :catch_b3

    goto :goto_bd

    .line 555
    :catch_b3
    move-exception v1

    .line 556
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Failed to close server socket."

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_be

    .line 558
    .end local v1    # "e":Ljava/io/IOException;
    :cond_bd
    :goto_bd
    nop

    .line 561
    :goto_be
    :try_start_be
    iget-object v1, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->mLocalSocket:Landroid/net/LocalSocket;

    if-eqz v1, :cond_c7

    .line 562
    iget-object v1, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c7} :catch_c8

    .line 567
    :cond_c7
    goto :goto_d1

    .line 564
    :catch_c8
    move-exception v1

    .line 565
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v2, "Failed to close mLocalSocket socket."

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 569
    .end local v1    # "e":Ljava/io/IOException;
    :goto_d1
    const-string v1, "Socket thread has been stopped."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    return-void

    .line 502
    :catch_d7
    move-exception v1

    .line 503
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "mLocalSocket.start Open"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 504
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 506
    :try_start_e1
    iget-object v2, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->mLocalSocket:Landroid/net/LocalSocket;

    if-eqz v2, :cond_ea

    .line 507
    iget-object v2, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_ea} :catch_eb

    .line 512
    :cond_ea
    goto :goto_f5

    .line 509
    :catch_eb
    move-exception v2

    .line 510
    .local v2, "e1":Ljava/lang/Exception;
    const-string/jumbo v3, "mLocalSocket.start close"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 511
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 513
    .end local v2    # "e1":Ljava/lang/Exception;
    :goto_f5
    return-void
.end method
