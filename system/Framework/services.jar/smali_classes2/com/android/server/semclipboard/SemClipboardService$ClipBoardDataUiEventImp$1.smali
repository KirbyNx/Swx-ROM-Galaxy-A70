.class Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp$1;
.super Landroid/sec/clipboard/IClipboardDataUiEvent$Stub;
.source "SemClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;


# direct methods
.method constructor <init>(Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;

    .line 247
    iput-object p1, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp$1;->this$1:Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;

    invoke-direct {p0}, Landroid/sec/clipboard/IClipboardDataUiEvent$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public removeAll()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp$1;->this$1:Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;

    invoke-virtual {v0}, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->removeAll()Z

    move-result v0

    return v0
.end method

.method public removeItem(I)V
    .registers 3
    .param p1, "arg0"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp$1;->this$1:Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;

    invoke-virtual {v0, p1}, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->removeItem(I)V

    .line 252
    return-void
.end method

.method public selectItem(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp$1;->this$1:Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/semclipboard/SemClipboardService$ClipBoardDataUiEventImp;->selectItem(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 263
    return-void
.end method
