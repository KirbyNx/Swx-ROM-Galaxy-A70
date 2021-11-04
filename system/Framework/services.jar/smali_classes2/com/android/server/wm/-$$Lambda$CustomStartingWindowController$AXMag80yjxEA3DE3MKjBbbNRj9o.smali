.class public final synthetic Lcom/android/server/wm/-$$Lambda$CustomStartingWindowController$AXMag80yjxEA3DE3MKjBbbNRj9o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/CustomStartingWindowController;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/CustomStartingWindowController;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$CustomStartingWindowController$AXMag80yjxEA3DE3MKjBbbNRj9o;->f$0:Lcom/android/server/wm/CustomStartingWindowController;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$CustomStartingWindowController$AXMag80yjxEA3DE3MKjBbbNRj9o;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$CustomStartingWindowController$AXMag80yjxEA3DE3MKjBbbNRj9o;->f$0:Lcom/android/server/wm/CustomStartingWindowController;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$CustomStartingWindowController$AXMag80yjxEA3DE3MKjBbbNRj9o;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/CustomStartingWindowController;->lambda$clearDataForAllUsers$1$CustomStartingWindowController(Ljava/lang/String;)V

    return-void
.end method
