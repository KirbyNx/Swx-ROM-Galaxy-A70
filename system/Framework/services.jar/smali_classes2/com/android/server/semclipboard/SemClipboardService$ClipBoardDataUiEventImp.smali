.class Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;
.super Ljava/lang/Object;
.source "SemClipboardService.java"

# interfaces
.implements Landroid/sec/clipboard/IClipboardDataUiEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/semclipboard/SemClipboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClipBoardDataUiEventImp"
.end annotation


# instance fields
.field private final mBind:Landroid/sec/clipboard/IClipboardDataUiEvent$Stub;

.field final synthetic this$0:Lcom/android/server/semclipboard/SemClipboardService;


# direct methods
.method private constructor <init>(Lcom/android/server/semclipboard/SemClipboardService;)V
    .registers 2

    .line 246
    iput-object p1, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    new-instance p1, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp$1;

    invoke-direct {p1, p0}, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp$1;-><init>(Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;)V

    iput-object p1, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->mBind:Landroid/sec/clipboard/IClipboardDataUiEvent$Stub;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/semclipboard/SemClipboardService;Lcom/android/server/semclipboard/SemClipboardService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/semclipboard/SemClipboardService;
    .param p2, "x1"    # Lcom/android/server/semclipboard/SemClipboardService$1;

    .line 246
    invoke-direct {p0, p1}, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;-><init>(Lcom/android/server/semclipboard/SemClipboardService;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 355
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->mBind:Landroid/sec/clipboard/IClipboardDataUiEvent$Stub;

    return-object v0
.end method

.method public removeAll()Z
    .registers 4

    .line 302
    monitor-enter p0

    .line 303
    :try_start_1
    const-string v0, "SemClipboardService"

    const-string v1, "Remove All"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v0}, Lcom/android/server/semclipboard/SemClipboardService;->access$200(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeAll()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 305
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    const/4 v1, 0x3

    # invokes: Lcom/android/server/semclipboard/SemClipboardService;->ListChange(I)V
    invoke-static {v0, v1}, Lcom/android/server/semclipboard/SemClipboardService;->access$400(Lcom/android/server/semclipboard/SemClipboardService;I)V

    .line 306
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/semclipboard/SemClipboardService;->notifyListChange(ILcom/samsung/android/content/clipboard/data/SemClipData;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/semclipboard/SemClipboardService;->access$500(Lcom/android/server/semclipboard/SemClipboardService;ILcom/samsung/android/content/clipboard/data/SemClipData;)V

    .line 307
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 309
    :cond_23
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 310
    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public removeItem(I)V
    .registers 7
    .param p1, "index"    # I

    .line 268
    monitor-enter p0

    .line 269
    :try_start_1
    const-string v0, "SemClipboardService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeItem index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-virtual {v0}, Lcom/android/server/semclipboard/SemClipboardService;->isKnoxTwoEnabled()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 274
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v0}, Lcom/android/server/semclipboard/SemClipboardService;->access$200(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v0

    .line 275
    .local v0, "dataListSize":I
    if-ge p1, v0, :cond_41

    .line 276
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v1}, Lcom/android/server/semclipboard/SemClipboardService;->access$200(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v1

    .line 277
    .local v1, "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v2}, Lcom/android/server/semclipboard/SemClipboardService;->access$200(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeData(I)Z

    move-result v2

    .local v2, "bRes":Z
    goto :goto_77

    .line 279
    .end local v1    # "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    .end local v2    # "bRes":Z
    :cond_41
    sub-int v1, p1, v0

    .line 280
    .local v1, "ownerIndex":I
    const-string v2, "SemClipboardService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data list size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " shared index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v2}, Lcom/android/server/semclipboard/SemClipboardService;->access$300(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v2

    .line 282
    .local v2, "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v3}, Lcom/android/server/semclipboard/SemClipboardService;->access$300(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeData(I)Z

    move-result v3

    move-object v1, v2

    move v2, v3

    .line 285
    .end local v0    # "dataListSize":I
    .local v1, "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    .local v2, "bRes":Z
    :goto_77
    goto :goto_8e

    .line 286
    .end local v1    # "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    .end local v2    # "bRes":Z
    :cond_78
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v0}, Lcom/android/server/semclipboard/SemClipboardService;->access$200(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v0

    move-object v1, v0

    .line 287
    .restart local v1    # "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v0}, Lcom/android/server/semclipboard/SemClipboardService;->access$200(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeData(I)Z

    move-result v0

    move v2, v0

    .line 290
    .restart local v2    # "bRes":Z
    :goto_8e
    if-eqz v2, :cond_9b

    .line 291
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    const/4 v3, 0x2

    # invokes: Lcom/android/server/semclipboard/SemClipboardService;->ListChange(I)V
    invoke-static {v0, v3}, Lcom/android/server/semclipboard/SemClipboardService;->access$400(Lcom/android/server/semclipboard/SemClipboardService;I)V

    .line 292
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # invokes: Lcom/android/server/semclipboard/SemClipboardService;->notifyListChange(ILcom/samsung/android/content/clipboard/data/SemClipData;)V
    invoke-static {v0, v3, v1}, Lcom/android/server/semclipboard/SemClipboardService;->access$500(Lcom/android/server/semclipboard/SemClipboardService;ILcom/samsung/android/content/clipboard/data/SemClipData;)V

    .line 294
    .end local v1    # "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    .end local v2    # "bRes":Z
    :cond_9b
    monitor-exit p0

    .line 295
    return-void

    .line 294
    :catchall_9d
    move-exception v0

    monitor-exit p0
    :try_end_9f
    .catchall {:try_start_1 .. :try_end_9f} :catchall_9d

    throw v0
.end method

.method public selectItem(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .registers 8
    .param p1, "index"    # I
    .param p2, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 322
    monitor-enter p0

    .line 323
    if-nez p2, :cond_c

    .line 324
    :try_start_3
    const-string v0, "SemClipboardService"

    const-string v1, "ClipboardDataPasteEvent is null."

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    monitor-exit p0

    return-void

    .line 328
    :cond_c
    const-string v0, "SemClipboardService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "selectItem index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_83

    .line 333
    :try_start_23
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    invoke-virtual {v0}, Lcom/android/server/semclipboard/SemClipboardService;->isKnoxTwoEnabled()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 334
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v0}, Lcom/android/server/semclipboard/SemClipboardService;->access$200(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v0

    .line 335
    .local v0, "dataListSize":I
    if-ge p1, v0, :cond_42

    .line 336
    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v1}, Lcom/android/server/semclipboard/SemClipboardService;->access$200(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v1

    .local v1, "resData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    goto :goto_6d

    .line 338
    .end local v1    # "resData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :cond_42
    sub-int v1, p1, v0

    .line 339
    .local v1, "ownerIndex":I
    const-string v2, "SemClipboardService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data list size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " shared index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v2}, Lcom/android/server/semclipboard/SemClipboardService;->access$300(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getSharedItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v2

    move-object v1, v2

    .line 343
    .end local v0    # "dataListSize":I
    .local v1, "resData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :goto_6d
    goto :goto_79

    .line 344
    .end local v1    # "resData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :cond_6e
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/semclipboard/SemClipboardService;

    # getter for: Lcom/android/server/semclipboard/SemClipboardService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v0}, Lcom/android/server/semclipboard/SemClipboardService;->access$200(Lcom/android/server/semclipboard/SemClipboardService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v0

    move-object v1, v0

    .line 346
    .restart local v1    # "resData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :goto_79
    invoke-interface {p2, v1}, Landroid/sec/clipboard/IClipboardDataPasteEvent;->onPaste(Lcom/samsung/android/content/clipboard/data/SemClipData;)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_7c} :catch_7d
    .catchall {:try_start_23 .. :try_end_7c} :catchall_83

    .line 349
    goto :goto_81

    .line 347
    .end local v1    # "resData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :catch_7d
    move-exception v0

    .line 348
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 350
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_81
    monitor-exit p0

    .line 351
    return-void

    .line 350
    :catchall_83
    move-exception v0

    monitor-exit p0
    :try_end_85
    .catchall {:try_start_7e .. :try_end_85} :catchall_83

    throw v0
.end method
