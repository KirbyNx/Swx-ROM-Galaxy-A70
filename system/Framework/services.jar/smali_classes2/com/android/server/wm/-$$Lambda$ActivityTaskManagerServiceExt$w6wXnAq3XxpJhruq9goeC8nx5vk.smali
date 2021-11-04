.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$w6wXnAq3XxpJhruq9goeC8nx5vk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:[I


# direct methods
.method public synthetic constructor <init>([I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$w6wXnAq3XxpJhruq9goeC8nx5vk;->f$0:[I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$w6wXnAq3XxpJhruq9goeC8nx5vk;->f$0:[I

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->lambda$changeAppLockActivityToServiceIfNeeded$5([ILcom/android/server/wm/Task;)V

    return-void
.end method
