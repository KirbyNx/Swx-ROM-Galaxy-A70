.class final Lcom/android/server/usb/UsbUI$UsbUIHandler;
.super Landroid/os/Handler;
.source "UsbUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UsbUIHandler"
.end annotation


# instance fields
.field private final currentOngoings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/usb/UsbUI$NotificationWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingJobs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/Deque<",
            "Lcom/android/server/usb/UsbUI$NotificationWrapper;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/usb/UsbUI;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbUI;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 714
    iput-object p1, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->this$0:Lcom/android/server/usb/UsbUI;

    .line 715
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 711
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->pendingJobs:Ljava/util/HashMap;

    .line 712
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->currentOngoings:Ljava/util/HashMap;

    .line 716
    return-void
.end method

.method private offer(ILcom/android/server/usb/UsbUI$NotificationWrapper;)Z
    .registers 6
    .param p1, "id"    # I
    .param p2, "noti"    # Lcom/android/server/usb/UsbUI$NotificationWrapper;

    .line 828
    const/4 v0, 0x0

    .line 829
    .local v0, "q":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/android/server/usb/UsbUI$NotificationWrapper;>;"
    iget-object v1, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->pendingJobs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 830
    iget-object v1, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->pendingJobs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Deque;

    goto :goto_2a

    .line 832
    :cond_1b
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    move-object v0, v1

    .line 833
    iget-object v1, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->pendingJobs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    :goto_2a
    invoke-interface {v0, p2}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private peek(I)Lcom/android/server/usb/UsbUI$NotificationWrapper;
    .registers 4
    .param p1, "id"    # I

    .line 855
    iget-object v0, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->pendingJobs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 856
    iget-object v0, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->pendingJobs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Deque;

    .line 857
    .local v0, "q":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/android/server/usb/UsbUI$NotificationWrapper;>;"
    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbUI$NotificationWrapper;

    return-object v1

    .line 859
    .end local v0    # "q":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/android/server/usb/UsbUI$NotificationWrapper;>;"
    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method private pollFirst(I)Lcom/android/server/usb/UsbUI$NotificationWrapper;
    .registers 4
    .param p1, "id"    # I

    .line 839
    iget-object v0, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->pendingJobs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 840
    iget-object v0, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->pendingJobs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Deque;

    .line 841
    .local v0, "q":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/android/server/usb/UsbUI$NotificationWrapper;>;"
    invoke-interface {v0}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbUI$NotificationWrapper;

    return-object v1

    .line 843
    .end local v0    # "q":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/android/server/usb/UsbUI$NotificationWrapper;>;"
    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method private pollLast(I)Lcom/android/server/usb/UsbUI$NotificationWrapper;
    .registers 4
    .param p1, "id"    # I

    .line 847
    iget-object v0, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->pendingJobs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 848
    iget-object v0, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->pendingJobs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Deque;

    .line 849
    .local v0, "q":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/android/server/usb/UsbUI$NotificationWrapper;>;"
    invoke-interface {v0}, Ljava/util/Deque;->pollLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbUI$NotificationWrapper;

    return-object v1

    .line 851
    .end local v0    # "q":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/android/server/usb/UsbUI$NotificationWrapper;>;"
    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method private size(I)I
    .registers 4
    .param p1, "id"    # I

    .line 863
    iget-object v0, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->pendingJobs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 864
    iget-object v0, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->pendingJobs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Deque;

    .line 865
    .local v0, "q":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/android/server/usb/UsbUI$NotificationWrapper;>;"
    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v1

    return v1

    .line 867
    .end local v0    # "q":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/android/server/usb/UsbUI$NotificationWrapper;>;"
    :cond_1d
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 739
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_126

    const/4 v1, 0x1

    if-eq v0, v1, :cond_108

    const/4 v2, 0x2

    const/4 v3, 0x3

    const-string v4, "UsbUI"

    if-eq v0, v2, :cond_cd

    const/4 v2, 0x0

    const/4 v5, 0x4

    if-eq v0, v3, :cond_7b

    if-eq v0, v5, :cond_30

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2e

    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_145

    .line 818
    :cond_2e
    goto/16 :goto_145

    .line 792
    :cond_30
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 794
    .local v0, "id":I
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbUI$UsbUIHandler;->pollFirst(I)Lcom/android/server/usb/UsbUI$NotificationWrapper;

    move-result-object v5

    .line 795
    .local v5, "noti":Lcom/android/server/usb/UsbUI$NotificationWrapper;
    if-eqz v5, :cond_50

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cancelAsUser: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/usb/UsbUI$NotificationWrapper;->title:Ljava/lang/CharSequence;
    invoke-static {v5}, Lcom/android/server/usb/UsbUI$NotificationWrapper;->access$2100(Lcom/android/server/usb/UsbUI$NotificationWrapper;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :cond_50
    iget-object v4, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->this$0:Lcom/android/server/usb/UsbUI;

    # getter for: Lcom/android/server/usb/UsbUI;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v4}, Lcom/android/server/usb/UsbUI;->access$2200(Lcom/android/server/usb/UsbUI;)Landroid/app/NotificationManager;

    move-result-object v4

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v0, v6}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 800
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbUI$UsbUIHandler;->size(I)I

    move-result v2

    if-lt v2, v1, :cond_64

    .line 801
    invoke-virtual {p0, v3, v0}, Lcom/android/server/usb/UsbUI$UsbUIHandler;->sendMessage(II)V

    .line 803
    :cond_64
    iget-object v1, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->currentOngoings:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_145

    .line 804
    iget-object v1, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->currentOngoings:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_145

    .line 773
    .end local v0    # "id":I
    .end local v5    # "noti":Lcom/android/server/usb/UsbUI$NotificationWrapper;
    :cond_7b
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 775
    .restart local v0    # "id":I
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbUI$UsbUIHandler;->peek(I)Lcom/android/server/usb/UsbUI$NotificationWrapper;

    move-result-object v1

    .line 777
    .local v1, "noti":Lcom/android/server/usb/UsbUI$NotificationWrapper;
    if-eqz v1, :cond_145

    .line 778
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notifyAsUser: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/usb/UsbUI$NotificationWrapper;->title:Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/android/server/usb/UsbUI$NotificationWrapper;->access$2100(Lcom/android/server/usb/UsbUI$NotificationWrapper;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object v3, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->this$0:Lcom/android/server/usb/UsbUI;

    # getter for: Lcom/android/server/usb/UsbUI;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v3}, Lcom/android/server/usb/UsbUI;->access$2200(Lcom/android/server/usb/UsbUI;)Landroid/app/NotificationManager;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/usb/UsbUI$NotificationWrapper;->build()Landroid/app/Notification;

    move-result-object v4

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v0, v4, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 781
    # getter for: Lcom/android/server/usb/UsbUI$NotificationWrapper;->instant:Z
    invoke-static {v1}, Lcom/android/server/usb/UsbUI$NotificationWrapper;->access$1900(Lcom/android/server/usb/UsbUI$NotificationWrapper;)Z

    move-result v2

    if-eqz v2, :cond_b6

    .line 783
    const/16 v2, 0xbb8

    invoke-virtual {p0, v5, v0, v2}, Lcom/android/server/usb/UsbUI$UsbUIHandler;->sendMessageDelayed(III)V

    .line 785
    :cond_b6
    # getter for: Lcom/android/server/usb/UsbUI$NotificationWrapper;->instant:Z
    invoke-static {v1}, Lcom/android/server/usb/UsbUI$NotificationWrapper;->access$1900(Lcom/android/server/usb/UsbUI$NotificationWrapper;)Z

    move-result v2

    if-nez v2, :cond_145

    # getter for: Lcom/android/server/usb/UsbUI$NotificationWrapper;->ongoing:Z
    invoke-static {v1}, Lcom/android/server/usb/UsbUI$NotificationWrapper;->access$2000(Lcom/android/server/usb/UsbUI$NotificationWrapper;)Z

    move-result v2

    if-eqz v2, :cond_145

    .line 786
    iget-object v2, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->currentOngoings:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_145

    .line 753
    .end local v0    # "id":I
    .end local v1    # "noti":Lcom/android/server/usb/UsbUI$NotificationWrapper;
    :cond_cd
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 754
    .restart local v0    # "id":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/usb/UsbUI$NotificationWrapper;

    .line 756
    .local v2, "noti":Lcom/android/server/usb/UsbUI$NotificationWrapper;
    invoke-direct {p0, v0, v2}, Lcom/android/server/usb/UsbUI$UsbUIHandler;->offer(ILcom/android/server/usb/UsbUI$NotificationWrapper;)Z

    .line 759
    # getter for: Lcom/android/server/usb/UsbUI$NotificationWrapper;->instant:Z
    invoke-static {v2}, Lcom/android/server/usb/UsbUI$NotificationWrapper;->access$1900(Lcom/android/server/usb/UsbUI$NotificationWrapper;)Z

    move-result v5

    if-nez v5, :cond_fe

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbUI$UsbUIHandler;->size(I)I

    move-result v5

    if-le v5, v1, :cond_fe

    .line 760
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove last insertion: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/usb/UsbUI$NotificationWrapper;->title:Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/android/server/usb/UsbUI$NotificationWrapper;->access$2100(Lcom/android/server/usb/UsbUI$NotificationWrapper;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbUI$UsbUIHandler;->pollLast(I)Lcom/android/server/usb/UsbUI$NotificationWrapper;

    .line 762
    return-void

    .line 767
    :cond_fe
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbUI$UsbUIHandler;->size(I)I

    move-result v4

    if-ne v4, v1, :cond_145

    .line 768
    invoke-virtual {p0, v3, v0}, Lcom/android/server/usb/UsbUI$UsbUIHandler;->sendMessage(II)V

    goto :goto_145

    .line 747
    .end local v0    # "id":I
    .end local v2    # "noti":Lcom/android/server/usb/UsbUI$NotificationWrapper;
    :cond_108
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 748
    .local v0, "resId":I
    iget-object v2, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->this$0:Lcom/android/server/usb/UsbUI;

    # getter for: Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/usb/UsbUI;->access$100(Lcom/android/server/usb/UsbUI;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->this$0:Lcom/android/server/usb/UsbUI;

    .line 749
    # getter for: Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/usb/UsbUI;->access$100(Lcom/android/server/usb/UsbUI;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 748
    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 749
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 750
    goto :goto_145

    .line 741
    .end local v0    # "resId":I
    :cond_126
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 742
    .restart local v0    # "resId":I
    iget-object v1, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->this$0:Lcom/android/server/usb/UsbUI;

    # getter for: Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/usb/UsbUI;->access$100(Lcom/android/server/usb/UsbUI;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->this$0:Lcom/android/server/usb/UsbUI;

    .line 743
    # getter for: Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/usb/UsbUI;->access$100(Lcom/android/server/usb/UsbUI;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 742
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 743
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 744
    nop

    .line 825
    .end local v0    # "resId":I
    :cond_145
    :goto_145
    return-void
.end method

.method public sendMessage(II)V
    .registers 4
    .param p1, "what"    # I
    .param p2, "arg"    # I

    .line 719
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 720
    .local v0, "m":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 721
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbUI$UsbUIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 722
    return-void
.end method

.method public sendMessage(IILjava/lang/Object;)V
    .registers 5
    .param p1, "what"    # I
    .param p2, "arg"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 725
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 726
    .local v0, "m":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 727
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 728
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbUI$UsbUIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 729
    return-void
.end method

.method public sendMessageDelayed(III)V
    .registers 7
    .param p1, "what"    # I
    .param p2, "arg"    # I
    .param p3, "delay"    # I

    .line 732
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 733
    .local v0, "m":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 734
    int-to-long v1, p3

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/usb/UsbUI$UsbUIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 735
    return-void
.end method
