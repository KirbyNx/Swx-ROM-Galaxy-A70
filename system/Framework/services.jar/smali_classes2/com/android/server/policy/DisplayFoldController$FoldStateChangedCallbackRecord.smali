.class final Lcom/android/server/policy/DisplayFoldController$FoldStateChangedCallbackRecord;
.super Ljava/lang/Object;
.source "DisplayFoldController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/DisplayFoldController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FoldStateChangedCallbackRecord"
.end annotation


# instance fields
.field private final mCallback:Landroid/view/IFoldStateChangedCallback;

.field public final mPid:I

.field final synthetic this$0:Lcom/android/server/policy/DisplayFoldController;


# direct methods
.method constructor <init>(Lcom/android/server/policy/DisplayFoldController;ILandroid/view/IFoldStateChangedCallback;)V
    .registers 4
    .param p2, "pid"    # I
    .param p3, "callback"    # Landroid/view/IFoldStateChangedCallback;

    .line 597
    iput-object p1, p0, Lcom/android/server/policy/DisplayFoldController$FoldStateChangedCallbackRecord;->this$0:Lcom/android/server/policy/DisplayFoldController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 598
    iput p2, p0, Lcom/android/server/policy/DisplayFoldController$FoldStateChangedCallbackRecord;->mPid:I

    .line 599
    iput-object p3, p0, Lcom/android/server/policy/DisplayFoldController$FoldStateChangedCallbackRecord;->mCallback:Landroid/view/IFoldStateChangedCallback;

    .line 600
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FoldStateChanged listener for pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/DisplayFoldController$FoldStateChangedCallbackRecord;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " died."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayFoldController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController$FoldStateChangedCallbackRecord;->this$0:Lcom/android/server/policy/DisplayFoldController;

    # invokes: Lcom/android/server/policy/DisplayFoldController;->onCallbackDied(Lcom/android/server/policy/DisplayFoldController$FoldStateChangedCallbackRecord;)V
    invoke-static {v0, p0}, Lcom/android/server/policy/DisplayFoldController;->access$400(Lcom/android/server/policy/DisplayFoldController;Lcom/android/server/policy/DisplayFoldController$FoldStateChangedCallbackRecord;)V

    .line 606
    return-void
.end method

.method notifyFoldStateChangedEventAsync(I)V
    .registers 5
    .param p1, "foldState"    # I

    .line 610
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController$FoldStateChangedCallbackRecord;->mCallback:Landroid/view/IFoldStateChangedCallback;

    invoke-interface {v0, p1}, Landroid/view/IFoldStateChangedCallback;->onFoldStateChanged(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 615
    goto :goto_27

    .line 611
    :catch_6
    move-exception v0

    .line 612
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to notify process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/policy/DisplayFoldController$FoldStateChangedCallbackRecord;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " that FoldStateChanged, assuming it died."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayFoldController"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 614
    invoke-virtual {p0}, Lcom/android/server/policy/DisplayFoldController$FoldStateChangedCallbackRecord;->binderDied()V

    .line 616
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_27
    return-void
.end method
