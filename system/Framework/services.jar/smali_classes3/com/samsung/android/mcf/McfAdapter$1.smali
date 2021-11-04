.class public Lcom/samsung/android/mcf/McfAdapter$1;
.super Ljava/lang/Object;
.source "McfAdapter.java"

# interfaces
.implements Lcom/samsung/android/mcf/McfContext$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/McfAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/mcf/McfAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/McfAdapter;)V
    .registers 2

    .line 359
    iput-object p1, p0, Lcom/samsung/android/mcf/McfAdapter$1;->this$0:Lcom/samsung/android/mcf/McfAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateEvent(I)V
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1c

    const/4 v0, 0x3

    if-eq p1, v0, :cond_a

    goto :goto_41

    .line 374
    :cond_a
    iget-object p1, p0, Lcom/samsung/android/mcf/McfAdapter$1;->this$0:Lcom/samsung/android/mcf/McfAdapter;

    # getter for: Lcom/samsung/android/mcf/McfAdapter;->mListener:Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;
    invoke-static {p1}, Lcom/samsung/android/mcf/McfAdapter;->access$000(Lcom/samsung/android/mcf/McfAdapter;)Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;

    move-result-object p1

    if-eqz p1, :cond_41

    .line 375
    iget-object p1, p0, Lcom/samsung/android/mcf/McfAdapter$1;->this$0:Lcom/samsung/android/mcf/McfAdapter;

    # getter for: Lcom/samsung/android/mcf/McfAdapter;->mListener:Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;
    invoke-static {p1}, Lcom/samsung/android/mcf/McfAdapter;->access$000(Lcom/samsung/android/mcf/McfAdapter;)Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;->onServiceRemoteException()V

    goto :goto_41

    .line 369
    :cond_1c
    iget-object p1, p0, Lcom/samsung/android/mcf/McfAdapter$1;->this$0:Lcom/samsung/android/mcf/McfAdapter;

    # getter for: Lcom/samsung/android/mcf/McfAdapter;->mListener:Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;
    invoke-static {p1}, Lcom/samsung/android/mcf/McfAdapter;->access$000(Lcom/samsung/android/mcf/McfAdapter;)Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;

    move-result-object p1

    if-eqz p1, :cond_41

    .line 370
    iget-object p1, p0, Lcom/samsung/android/mcf/McfAdapter$1;->this$0:Lcom/samsung/android/mcf/McfAdapter;

    # getter for: Lcom/samsung/android/mcf/McfAdapter;->mListener:Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;
    invoke-static {p1}, Lcom/samsung/android/mcf/McfAdapter;->access$000(Lcom/samsung/android/mcf/McfAdapter;)Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;->onServiceDisconnected()V

    goto :goto_41

    .line 364
    :cond_2e
    iget-object p1, p0, Lcom/samsung/android/mcf/McfAdapter$1;->this$0:Lcom/samsung/android/mcf/McfAdapter;

    # getter for: Lcom/samsung/android/mcf/McfAdapter;->mListener:Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;
    invoke-static {p1}, Lcom/samsung/android/mcf/McfAdapter;->access$000(Lcom/samsung/android/mcf/McfAdapter;)Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;

    move-result-object p1

    if-eqz p1, :cond_41

    .line 365
    iget-object p1, p0, Lcom/samsung/android/mcf/McfAdapter$1;->this$0:Lcom/samsung/android/mcf/McfAdapter;

    # getter for: Lcom/samsung/android/mcf/McfAdapter;->mListener:Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;
    invoke-static {p1}, Lcom/samsung/android/mcf/McfAdapter;->access$000(Lcom/samsung/android/mcf/McfAdapter;)Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/mcf/McfAdapter$1;->this$0:Lcom/samsung/android/mcf/McfAdapter;

    invoke-interface {p1, v0}, Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;->onServiceConnected(Lcom/samsung/android/mcf/McfAdapter;)V

    :cond_41
    :goto_41
    return-void
.end method
