.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityStack$W67sd8AeAGx32tFIatx3GYvaD8c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityStack;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityStack;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$W67sd8AeAGx32tFIatx3GYvaD8c;->f$0:Lcom/android/server/wm/ActivityStack;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$W67sd8AeAGx32tFIatx3GYvaD8c;->f$0:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->lambda$dismissPip$15$ActivityStack()V

    return-void
.end method
