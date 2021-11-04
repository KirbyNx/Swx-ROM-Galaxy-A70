.class public final synthetic Lcom/samsung/android/server/audio/-$$Lambda$AudioExecutor$R0RVAY90ieyUYv4EJ8UJpsLQ5so;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/audio/-$$Lambda$AudioExecutor$R0RVAY90ieyUYv4EJ8UJpsLQ5so;->f$0:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/samsung/android/server/audio/-$$Lambda$AudioExecutor$R0RVAY90ieyUYv4EJ8UJpsLQ5so;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/server/audio/-$$Lambda$AudioExecutor$R0RVAY90ieyUYv4EJ8UJpsLQ5so;->f$0:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/samsung/android/server/audio/-$$Lambda$AudioExecutor$R0RVAY90ieyUYv4EJ8UJpsLQ5so;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/server/audio/AudioExecutor;->lambda$execute$0(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method
