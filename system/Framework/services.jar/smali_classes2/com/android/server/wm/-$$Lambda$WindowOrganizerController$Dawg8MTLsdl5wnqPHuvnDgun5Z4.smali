.class public final synthetic Lcom/android/server/wm/-$$Lambda$WindowOrganizerController$Dawg8MTLsdl5wnqPHuvnDgun5Z4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$WindowOrganizerController$Dawg8MTLsdl5wnqPHuvnDgun5Z4;->f$0:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$WindowOrganizerController$Dawg8MTLsdl5wnqPHuvnDgun5Z4;->f$0:Ljava/util/concurrent/atomic/AtomicInteger;

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {v0, p1}, Lcom/android/server/wm/WindowOrganizerController;->lambda$applySyncTransaction$0(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/wm/Task;)V

    return-void
.end method
