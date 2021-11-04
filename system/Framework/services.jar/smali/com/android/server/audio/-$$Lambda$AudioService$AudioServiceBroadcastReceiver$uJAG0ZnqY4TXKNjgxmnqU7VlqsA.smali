.class public final synthetic Lcom/android/server/audio/-$$Lambda$AudioService$AudioServiceBroadcastReceiver$uJAG0ZnqY4TXKNjgxmnqU7VlqsA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/-$$Lambda$AudioService$AudioServiceBroadcastReceiver$uJAG0ZnqY4TXKNjgxmnqU7VlqsA;->f$0:Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/audio/-$$Lambda$AudioService$AudioServiceBroadcastReceiver$uJAG0ZnqY4TXKNjgxmnqU7VlqsA;->f$0:Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->lambda$onReceive$1$AudioService$AudioServiceBroadcastReceiver()V

    return-void
.end method
