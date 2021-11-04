.class final Lcom/android/server/autofill/Session$AssistDataReceiverImpl;
.super Landroid/app/IAssistDataReceiver$Stub;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AssistDataReceiverImpl"
.end annotation


# instance fields
.field private mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private mPendingFillRequest:Landroid/service/autofill/FillRequest;

.field private mPendingInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

.field final synthetic this$0:Lcom/android/server/autofill/Session;


# direct methods
.method private constructor <init>(Lcom/android/server/autofill/Session;)V
    .registers 3

    .line 381
    iput-object p1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-direct {p0}, Landroid/app/IAssistDataReceiver$Stub;-><init>()V

    .line 387
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/autofill/Session;Lcom/android/server/autofill/Session$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/autofill/Session;
    .param p2, "x1"    # Lcom/android/server/autofill/Session$1;

    .line 381
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;-><init>(Lcom/android/server/autofill/Session;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$newAutofillRequestLocked$0$Session$AssistDataReceiverImpl(Lcom/android/server/autofill/ViewState;Landroid/view/inputmethod/InlineSuggestionsRequest;)V
    .registers 8
    .param p1, "viewState"    # Lcom/android/server/autofill/ViewState;
    .param p2, "inlineSuggestionsRequest"    # Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 396
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    # getter for: Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/autofill/Session;->access$500(Lcom/android/server/autofill/Session;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 397
    :try_start_7
    iget-object v1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_15

    .line 398
    monitor-exit v0

    return-void

    .line 400
    :cond_15
    iput-object p2, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 401
    iget-object v1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 402
    invoke-virtual {p0}, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->maybeRequestFillLocked()V

    .line 403
    const/high16 v1, 0x10000

    invoke-virtual {p1, v1}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    .line 404
    monitor-exit v0

    .line 405
    return-void

    .line 404
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_26

    throw v1
.end method

.method maybeRequestFillLocked()V
    .registers 8

    .line 409
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_48

    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    if-nez v0, :cond_11

    goto :goto_48

    .line 412
    :cond_11
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    if-eqz v0, :cond_37

    .line 413
    new-instance v0, Landroid/service/autofill/FillRequest;

    iget-object v1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    invoke-virtual {v1}, Landroid/service/autofill/FillRequest;->getId()I

    move-result v2

    iget-object v1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    .line 414
    invoke-virtual {v1}, Landroid/service/autofill/FillRequest;->getFillContexts()Ljava/util/List;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    invoke-virtual {v1}, Landroid/service/autofill/FillRequest;->getClientState()Landroid/os/Bundle;

    move-result-object v4

    iget-object v1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    .line 415
    invoke-virtual {v1}, Landroid/service/autofill/FillRequest;->getFlags()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/service/autofill/FillRequest;-><init>(ILjava/util/List;Landroid/os/Bundle;ILandroid/view/inputmethod/InlineSuggestionsRequest;)V

    iput-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    .line 417
    :cond_37
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    # getter for: Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;
    invoke-static {v0}, Lcom/android/server/autofill/Session;->access$100(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/RemoteFillService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/RemoteFillService;->onFillRequest(Landroid/service/autofill/FillRequest;)V

    .line 418
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 419
    iput-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    .line 420
    return-void

    .line 410
    :cond_48
    :goto_48
    return-void
.end method

.method newAutofillRequestLocked(Lcom/android/server/autofill/ViewState;Z)Ljava/util/function/Consumer;
    .registers 5
    .param p1, "viewState"    # Lcom/android/server/autofill/ViewState;
    .param p2, "isInlineRequest"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/autofill/ViewState;",
            "Z)",
            "Ljava/util/function/Consumer<",
            "Landroid/view/inputmethod/InlineSuggestionsRequest;",
            ">;"
        }
    .end annotation

    .line 392
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    if-eqz p2, :cond_6

    const/4 v1, 0x2

    goto :goto_7

    :cond_6
    const/4 v1, 0x1

    :goto_7
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 393
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    .line 394
    iput-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 395
    if-eqz p2, :cond_19

    new-instance v0, Lcom/android/server/autofill/-$$Lambda$Session$AssistDataReceiverImpl$8ZuPj-FqTW0k9-Ckdp6ED5K6OdQ;

    invoke-direct {v0, p0, p1}, Lcom/android/server/autofill/-$$Lambda$Session$AssistDataReceiverImpl$8ZuPj-FqTW0k9-Ckdp6ED5K6OdQ;-><init>(Lcom/android/server/autofill/Session$AssistDataReceiverImpl;Lcom/android/server/autofill/ViewState;)V

    goto :goto_1a

    .line 405
    :cond_19
    nop

    .line 395
    :goto_1a
    return-object v0
.end method

.method public onHandleAssistData(Landroid/os/Bundle;)V
    .registers 20
    .param p1, "resultData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 424
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    # getter for: Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;
    invoke-static {v0}, Lcom/android/server/autofill/Session;->access$100(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/RemoteFillService;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_24

    .line 425
    iget-object v0, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    const/4 v5, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 426
    # getter for: Lcom/android/server/autofill/Session;->mForAugmentedAutofillOnly:Z
    invoke-static {v0}, Lcom/android/server/autofill/Session;->access$200(Lcom/android/server/autofill/Session;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v3

    .line 425
    const-string/jumbo v3, "onHandleAssistData() called without a remote service. mForAugmentedAutofillOnly: %s"

    # invokes: Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v0, v5, v3, v4}, Lcom/android/server/autofill/Session;->access$300(Lcom/android/server/autofill/Session;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 427
    return-void

    .line 430
    :cond_24
    iget-object v0, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    # getter for: Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;
    invoke-static {v0}, Lcom/android/server/autofill/Session;->access$400(Lcom/android/server/autofill/Session;)Landroid/view/autofill/AutofillId;

    move-result-object v5

    .line 431
    .local v5, "currentViewId":Landroid/view/autofill/AutofillId;
    if-nez v5, :cond_34

    .line 432
    const-string v0, "AutofillSession"

    const-string v3, "No current view id - session might have finished"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    return-void

    .line 436
    :cond_34
    const-string/jumbo v0, "structure"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/assist/AssistStructure;

    .line 437
    .local v6, "structure":Landroid/app/assist/AssistStructure;
    if-nez v6, :cond_48

    .line 438
    const-string v0, "AutofillSession"

    const-string v3, "No assist structure - app might have crashed providing it"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return-void

    .line 442
    :cond_48
    const-string/jumbo v0, "receiverExtras"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 443
    .local v7, "receiverExtras":Landroid/os/Bundle;
    if-nez v7, :cond_59

    .line 444
    const-string v0, "AutofillSession"

    const-string v3, "No receiver extras - app might have crashed providing it"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    return-void

    .line 448
    :cond_59
    const-string v0, "android.service.autofill.extra.REQUEST_ID"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 450
    .local v14, "requestId":I
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_81

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "New structure for requestId "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "AutofillSession"

    invoke-static {v8, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_81
    iget-object v0, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    # getter for: Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/autofill/Session;->access$500(Lcom/android/server/autofill/Session;)Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15

    .line 462
    :try_start_88
    invoke-virtual {v6}, Landroid/app/assist/AssistStructure;->ensureDataForAutofill()V
    :try_end_8b
    .catch Ljava/lang/RuntimeException; {:try_start_88 .. :try_end_8b} :catch_1e4
    .catchall {:try_start_88 .. :try_end_8b} :catchall_1e2

    .line 467
    nop

    .line 469
    :try_start_8c
    invoke-static {v6, v3}, Lcom/android/server/autofill/Helper;->getAutofillIds(Landroid/app/assist/AssistStructure;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 471
    .local v0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_91
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_a7

    .line 472
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/autofill/AutofillId;

    iget-object v10, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    iget v10, v10, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v9, v10}, Landroid/view/autofill/AutofillId;->setSessionId(I)V

    .line 471
    add-int/lit8 v8, v8, 0x1

    goto :goto_91

    .line 476
    .end local v8    # "i":I
    :cond_a7
    invoke-virtual {v6}, Landroid/app/assist/AssistStructure;->getFlags()I

    move-result v8

    .line 478
    .local v8, "flags":I
    iget-object v9, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    # getter for: Lcom/android/server/autofill/Session;->mCompatMode:Z
    invoke-static {v9}, Lcom/android/server/autofill/Session;->access$600(Lcom/android/server/autofill/Session;)Z

    move-result v9

    if-eqz v9, :cond_145

    .line 480
    iget-object v9, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    # getter for: Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;
    invoke-static {v9}, Lcom/android/server/autofill/Session;->access$800(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v9

    iget-object v10, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    .line 481
    # getter for: Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;
    invoke-static {v10}, Lcom/android/server/autofill/Session;->access$700(Lcom/android/server/autofill/Session;)Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 480
    invoke-virtual {v9, v10}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getUrlBarResourceIdsForCompatMode(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 482
    .local v9, "urlBarIds":[Ljava/lang/String;
    sget-boolean v10, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v10, :cond_e6

    .line 483
    const-string v10, "AutofillSession"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "url_bars in compat mode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_e6
    if-eqz v9, :cond_141

    .line 486
    iget-object v10, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v6, v9}, Lcom/android/server/autofill/Helper;->sanitizeUrlBar(Landroid/app/assist/AssistStructure;[Ljava/lang/String;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v11

    # setter for: Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;
    invoke-static {v10, v11}, Lcom/android/server/autofill/Session;->access$902(Lcom/android/server/autofill/Session;Landroid/app/assist/AssistStructure$ViewNode;)Landroid/app/assist/AssistStructure$ViewNode;

    .line 487
    iget-object v10, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    # getter for: Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;
    invoke-static {v10}, Lcom/android/server/autofill/Session;->access$900(Lcom/android/server/autofill/Session;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v10

    if-eqz v10, :cond_141

    .line 488
    iget-object v10, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    # getter for: Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;
    invoke-static {v10}, Lcom/android/server/autofill/Session;->access$900(Lcom/android/server/autofill/Session;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v10

    .line 489
    .local v10, "urlBarId":Landroid/view/autofill/AutofillId;
    sget-boolean v11, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v11, :cond_12f

    .line 490
    const-string v11, "AutofillSession"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Setting urlBar as id="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " and domain "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    .line 491
    # getter for: Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;
    invoke-static {v13}, Lcom/android/server/autofill/Session;->access$900(Lcom/android/server/autofill/Session;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/assist/AssistStructure$ViewNode;->getWebDomain()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 490
    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_12f
    new-instance v11, Lcom/android/server/autofill/ViewState;

    iget-object v12, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    const/16 v13, 0x200

    invoke-direct {v11, v10, v12, v13}, Lcom/android/server/autofill/ViewState;-><init>(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState$Listener;I)V

    .line 495
    .local v11, "viewState":Lcom/android/server/autofill/ViewState;
    iget-object v12, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    # getter for: Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;
    invoke-static {v12}, Lcom/android/server/autofill/Session;->access$1000(Lcom/android/server/autofill/Session;)Landroid/util/ArrayMap;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    .end local v10    # "urlBarId":Landroid/view/autofill/AutofillId;
    .end local v11    # "viewState":Lcom/android/server/autofill/ViewState;
    :cond_141
    or-int/lit8 v8, v8, 0x2

    move v13, v8

    goto :goto_146

    .line 478
    .end local v9    # "urlBarIds":[Ljava/lang/String;
    :cond_145
    move v13, v8

    .line 500
    .end local v8    # "flags":I
    .local v13, "flags":I
    :goto_146
    invoke-virtual {v6, v4}, Landroid/app/assist/AssistStructure;->sanitizeForParceling(Z)V

    .line 502
    iget-object v8, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    # getter for: Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/server/autofill/Session;->access$1100(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v8

    if-nez v8, :cond_15b

    .line 503
    iget-object v8, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(I)V

    # setter for: Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;
    invoke-static {v8, v9}, Lcom/android/server/autofill/Session;->access$1102(Lcom/android/server/autofill/Session;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 505
    :cond_15b
    iget-object v4, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    # getter for: Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/autofill/Session;->access$1100(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v8, Landroid/service/autofill/FillContext;

    invoke-direct {v8, v14, v6, v5}, Landroid/service/autofill/FillContext;-><init>(ILandroid/app/assist/AssistStructure;Landroid/view/autofill/AutofillId;)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    iget-object v4, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    # invokes: Lcom/android/server/autofill/Session;->cancelCurrentRequestLocked()V
    invoke-static {v4}, Lcom/android/server/autofill/Session;->access$1200(Lcom/android/server/autofill/Session;)V

    .line 509
    iget-object v4, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    # getter for: Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/autofill/Session;->access$1100(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 510
    .local v4, "numContexts":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_179
    if-ge v8, v4, :cond_18f

    .line 511
    iget-object v9, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    iget-object v10, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    # getter for: Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/server/autofill/Session;->access$1100(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/service/autofill/FillContext;

    # invokes: Lcom/android/server/autofill/Session;->fillContextWithAllowedValuesLocked(Landroid/service/autofill/FillContext;I)V
    invoke-static {v9, v10, v13}, Lcom/android/server/autofill/Session;->access$1300(Lcom/android/server/autofill/Session;Landroid/service/autofill/FillContext;I)V

    .line 510
    add-int/lit8 v8, v8, 0x1

    goto :goto_179

    .line 514
    .end local v8    # "i":I
    :cond_18f
    iget-object v8, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    .line 515
    # invokes: Lcom/android/server/autofill/Session;->mergePreviousSessionLocked(Z)Ljava/util/ArrayList;
    invoke-static {v8, v3}, Lcom/android/server/autofill/Session;->access$1400(Lcom/android/server/autofill/Session;Z)Ljava/util/ArrayList;

    move-result-object v10

    .line 516
    .local v10, "contexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FillContext;>;"
    new-instance v3, Landroid/service/autofill/FillRequest;

    iget-object v8, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    # getter for: Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;
    invoke-static {v8}, Lcom/android/server/autofill/Session;->access$1500(Lcom/android/server/autofill/Session;)Landroid/os/Bundle;

    move-result-object v11

    const/16 v16, 0x0

    move-object v8, v3

    move v9, v14

    move v12, v13

    move/from16 v17, v13

    .end local v13    # "flags":I
    .local v17, "flags":I
    move-object/from16 v13, v16

    invoke-direct/range {v8 .. v13}, Landroid/service/autofill/FillRequest;-><init>(ILjava/util/List;Landroid/os/Bundle;ILandroid/view/inputmethod/InlineSuggestionsRequest;)V

    .line 519
    .local v3, "request":Landroid/service/autofill/FillRequest;
    iget-object v8, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v8

    const-wide/16 v11, 0x0

    cmp-long v8, v8, v11

    if-lez v8, :cond_1c0

    .line 520
    iput-object v3, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    .line 521
    iget-object v8, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 522
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->maybeRequestFillLocked()V

    goto :goto_1c9

    .line 526
    :cond_1c0
    iget-object v8, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    # getter for: Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;
    invoke-static {v8}, Lcom/android/server/autofill/Session;->access$100(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/RemoteFillService;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/android/server/autofill/RemoteFillService;->onFillRequest(Landroid/service/autofill/FillRequest;)V

    .line 528
    .end local v0    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v4    # "numContexts":I
    .end local v10    # "contexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FillContext;>;"
    .end local v17    # "flags":I
    :goto_1c9
    monitor-exit v15
    :try_end_1ca
    .catchall {:try_start_8c .. :try_end_1ca} :catchall_1e2

    .line 530
    iget-object v0, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    # getter for: Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/server/autofill/Session;->access$1600(Lcom/android/server/autofill/Session;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1e1

    .line 531
    iget-object v0, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    # getter for: Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;
    invoke-static {v0}, Lcom/android/server/autofill/Session;->access$800(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    # getter for: Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;
    invoke-static {v4}, Lcom/android/server/autofill/Session;->access$1600(Lcom/android/server/autofill/Session;)Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->sendActivityAssistDataToContentCapture(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    .line 533
    :cond_1e1
    return-void

    .line 528
    .end local v3    # "request":Landroid/service/autofill/FillRequest;
    :catchall_1e2
    move-exception v0

    goto :goto_1fb

    .line 463
    :catch_1e4
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 464
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1e7
    iget-object v8, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    const-string v9, "Exception lazy loading assist structure for %s: %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    .line 465
    invoke-virtual {v6}, Landroid/app/assist/AssistStructure;->getActivityComponent()Landroid/content/ComponentName;

    move-result-object v11

    aput-object v11, v10, v3

    aput-object v0, v10, v4

    .line 464
    # invokes: Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v8, v0, v9, v10}, Lcom/android/server/autofill/Session;->access$300(Lcom/android/server/autofill/Session;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 466
    monitor-exit v15

    return-void

    .line 528
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1fb
    monitor-exit v15
    :try_end_1fc
    .catchall {:try_start_1e7 .. :try_end_1fc} :catchall_1e2

    throw v0
.end method

.method public onHandleAssistScreenshot(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "screenshot"    # Landroid/graphics/Bitmap;

    .line 538
    return-void
.end method
