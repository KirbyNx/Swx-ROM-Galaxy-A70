.class public Lcom/samsung/android/mcf/McfContext$2;
.super Landroid/os/Handler;
.source "McfContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/McfContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/mcf/McfContext;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/McfContext;Landroid/os/Looper;)V
    .registers 3

    .line 302
    iput-object p1, p0, Lcom/samsung/android/mcf/McfContext$2;->this$0:Lcom/samsung/android/mcf/McfContext;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 306
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6c

    const/4 v2, 0x2

    if-eq v0, v2, :cond_47

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2d

    const/4 v3, 0x4

    if-eq v0, v3, :cond_19

    const/4 p1, 0x5

    if-eq v0, p1, :cond_13

    goto/16 :goto_86

    .line 317
    :cond_13
    iget-object p1, p0, Lcom/samsung/android/mcf/McfContext$2;->this$0:Lcom/samsung/android/mcf/McfContext;

    # invokes: Lcom/samsung/android/mcf/McfContext;->shutDown()V
    invoke-static {p1}, Lcom/samsung/android/mcf/McfContext;->access$000(Lcom/samsung/android/mcf/McfContext;)V

    goto :goto_47

    :cond_19
    nop

    .line 339
    const-string v0, "McfContext"

    const-string v2, "onServiceConnected TO"

    const-string v3, "-"

    invoke-static {v0, v2, v3}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/mcf/McfContext$EventListener;

    if-eqz p1, :cond_86

    .line 342
    invoke-interface {p1, v1}, Lcom/samsung/android/mcf/McfContext$EventListener;->onUpdateEvent(I)V

    goto :goto_86

    .line 331
    :cond_2d
    iget-object p1, p0, Lcom/samsung/android/mcf/McfContext$2;->this$0:Lcom/samsung/android/mcf/McfContext;

    iget-object p1, p1, Lcom/samsung/android/mcf/McfContext;->mEventListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_35
    :goto_35
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/McfContext$EventListener;

    if-eqz v0, :cond_35

    .line 333
    invoke-interface {v0, v3}, Lcom/samsung/android/mcf/McfContext$EventListener;->onUpdateEvent(I)V

    goto :goto_35

    .line 321
    :cond_47
    :goto_47
    iget-object p1, p0, Lcom/samsung/android/mcf/McfContext$2;->this$0:Lcom/samsung/android/mcf/McfContext;

    iget-object p1, p1, Lcom/samsung/android/mcf/McfContext;->mEventListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4f
    :goto_4f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/McfContext$EventListener;

    if-eqz v0, :cond_4f

    .line 323
    invoke-interface {v0, v2}, Lcom/samsung/android/mcf/McfContext$EventListener;->onUpdateEvent(I)V

    goto :goto_4f

    .line 326
    :cond_61
    iget-object p1, p0, Lcom/samsung/android/mcf/McfContext$2;->this$0:Lcom/samsung/android/mcf/McfContext;

    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfContext;->unbind()V

    .line 327
    iget-object p1, p0, Lcom/samsung/android/mcf/McfContext$2;->this$0:Lcom/samsung/android/mcf/McfContext;

    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfContext;->releaseInstance()V

    goto :goto_86

    .line 308
    :cond_6c
    iget-object p1, p0, Lcom/samsung/android/mcf/McfContext$2;->this$0:Lcom/samsung/android/mcf/McfContext;

    iget-object p1, p1, Lcom/samsung/android/mcf/McfContext;->mEventListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_74
    :goto_74
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/McfContext$EventListener;

    if-eqz v0, :cond_74

    .line 310
    invoke-interface {v0, v1}, Lcom/samsung/android/mcf/McfContext$EventListener;->onUpdateEvent(I)V

    goto :goto_74

    :cond_86
    :goto_86
    return-void
.end method
