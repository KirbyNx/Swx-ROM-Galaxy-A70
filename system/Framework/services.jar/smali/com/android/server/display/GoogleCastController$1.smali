.class Lcom/android/server/display/GoogleCastController$1;
.super Ljava/lang/Object;
.source "GoogleCastController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/GoogleCastController;->handleConnectionStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/GoogleCastController;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/android/server/display/GoogleCastController;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/display/GoogleCastController;

    .line 120
    iput-object p1, p0, Lcom/android/server/display/GoogleCastController$1;->this$0:Lcom/android/server/display/GoogleCastController;

    iput p2, p0, Lcom/android/server/display/GoogleCastController$1;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 123
    iget v0, p0, Lcom/android/server/display/GoogleCastController$1;->val$state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 124
    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$1;->this$0:Lcom/android/server/display/GoogleCastController;

    # getter for: Lcom/android/server/display/GoogleCastController;->mListener:Lcom/android/server/display/GoogleCastController$Listener;
    invoke-static {v0}, Lcom/android/server/display/GoogleCastController;->access$000(Lcom/android/server/display/GoogleCastController;)Lcom/android/server/display/GoogleCastController$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/GoogleCastController$Listener;->onConnected()V

    goto :goto_1a

    .line 125
    :cond_f
    if-nez v0, :cond_1a

    .line 126
    iget-object v0, p0, Lcom/android/server/display/GoogleCastController$1;->this$0:Lcom/android/server/display/GoogleCastController;

    # getter for: Lcom/android/server/display/GoogleCastController;->mListener:Lcom/android/server/display/GoogleCastController$Listener;
    invoke-static {v0}, Lcom/android/server/display/GoogleCastController;->access$000(Lcom/android/server/display/GoogleCastController;)Lcom/android/server/display/GoogleCastController$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/GoogleCastController$Listener;->onDisconnected()V

    .line 128
    :cond_1a
    :goto_1a
    return-void
.end method
