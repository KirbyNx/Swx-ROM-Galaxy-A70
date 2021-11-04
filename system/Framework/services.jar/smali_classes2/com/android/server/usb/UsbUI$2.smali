.class Lcom/android/server/usb/UsbUI$2;
.super Landroid/content/BroadcastReceiver;
.source "UsbUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbUI;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbUI;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/usb/UsbUI;

    .line 187
    iput-object p1, p0, Lcom/android/server/usb/UsbUI$2;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mUsbWetStateReceiver ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbUI"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/android/server/usb/UsbUI$2;->this$0:Lcom/android/server/usb/UsbUI;

    # getter for: Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/usb/UsbUI;->access$100(Lcom/android/server/usb/UsbUI;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 196
    iget-object v0, p0, Lcom/android/server/usb/UsbUI$2;->this$0:Lcom/android/server/usb/UsbUI;

    # getter for: Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/usb/UsbUI;->access$100(Lcom/android/server/usb/UsbUI;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040cda

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/usb/UsbUI$2;->this$0:Lcom/android/server/usb/UsbUI;

    # getter for: Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/usb/UsbUI;->access$100(Lcom/android/server/usb/UsbUI;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040ce2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "button":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/usb/UsbUI$2;->this$0:Lcom/android/server/usb/UsbUI;

    # getter for: Lcom/android/server/usb/UsbUI;->isSupportWirelessCharging:Z
    invoke-static {v2}, Lcom/android/server/usb/UsbUI;->access$200(Lcom/android/server/usb/UsbUI;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 201
    iget-object v2, p0, Lcom/android/server/usb/UsbUI$2;->this$0:Lcom/android/server/usb/UsbUI;

    # getter for: Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/usb/UsbUI;->access$100(Lcom/android/server/usb/UsbUI;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040ce3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "message":Ljava/lang/String;
    goto :goto_6b

    .line 203
    .end local v2    # "message":Ljava/lang/String;
    :cond_5e
    iget-object v2, p0, Lcom/android/server/usb/UsbUI$2;->this$0:Lcom/android/server/usb/UsbUI;

    # getter for: Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/usb/UsbUI;->access$100(Lcom/android/server/usb/UsbUI;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040ce1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 205
    .restart local v2    # "message":Ljava/lang/String;
    :goto_6b
    const-string v3, "\\n"

    const-string v4, "\n"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 207
    iget-object v3, p0, Lcom/android/server/usb/UsbUI$2;->this$0:Lcom/android/server/usb/UsbUI;

    # getter for: Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/usb/UsbUI;->access$100(Lcom/android/server/usb/UsbUI;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0x30

    .line 208
    .local v3, "currentMode":I
    const/4 v4, 0x5

    .line 209
    .local v4, "theme":I
    const/16 v5, 0x20

    if-ne v3, v5, :cond_8b

    .line 210
    const/4 v4, 0x4

    .line 213
    :cond_8b
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/server/usb/UsbUI$2;->this$0:Lcom/android/server/usb/UsbUI;

    # getter for: Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/usb/UsbUI;->access$100(Lcom/android/server/usb/UsbUI;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 214
    .local v5, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 215
    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 216
    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 217
    new-instance v6, Lcom/android/server/usb/UsbUI$2$1;

    invoke-direct {v6, p0}, Lcom/android/server/usb/UsbUI$2$1;-><init>(Lcom/android/server/usb/UsbUI$2;)V

    invoke-virtual {v5, v1, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 225
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 226
    .local v6, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7d8

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    .line 227
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 228
    return-void
.end method
