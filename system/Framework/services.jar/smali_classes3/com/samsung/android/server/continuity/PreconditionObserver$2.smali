.class Lcom/samsung/android/server/continuity/PreconditionObserver$2;
.super Landroid/database/ContentObserver;
.source "PreconditionObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/continuity/PreconditionObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/continuity/PreconditionObserver;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/android/server/continuity/PreconditionObserver;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 310
    iput-object p1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver$2;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .line 313
    iget-object v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver$2;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    # invokes: Lcom/samsung/android/server/continuity/PreconditionObserver;->onChangeSettings()V
    invoke-static {v0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->access$000(Lcom/samsung/android/server/continuity/PreconditionObserver;)V

    .line 314
    return-void
.end method
