.class Lcom/android/server/isrb/IsrbManagerServiceImpl$4;
.super Ljava/lang/Object;
.source "IsrbManagerServiceImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 234
    iput-object p1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$4;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 237
    iget-object v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$4;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    # getter for: Lcom/android/server/isrb/IsrbManagerServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->access$100(Lcom/android/server/isrb/IsrbManagerServiceImpl;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.isrb.SYSTEM_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 238
    return-void
.end method
