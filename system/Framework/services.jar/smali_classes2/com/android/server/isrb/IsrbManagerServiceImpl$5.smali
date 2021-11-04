.class Lcom/android/server/isrb/IsrbManagerServiceImpl$5;
.super Ljava/lang/Object;
.source "IsrbManagerServiceImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/isrb/IsrbManagerServiceImpl;->showSystemErrDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/isrb/IsrbManagerServiceImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/isrb/IsrbManagerServiceImpl;

    .line 244
    iput-object p1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$5;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 247
    const-string v0, "IsrbManagerServiceImpl"

    const-string/jumbo v1, "showSystemErrDialog() dismissed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$5;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/isrb/IsrbManagerServiceImpl;->mIsSystemErrPopup:Z
    invoke-static {v0, v1}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->access$302(Lcom/android/server/isrb/IsrbManagerServiceImpl;Z)Z

    .line 249
    iget-object v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$5;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->setTipsTime()V

    .line 250
    return-void
.end method
