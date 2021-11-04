.class final Lcom/android/server/usb/UsbUI$NotificationWrapper;
.super Ljava/lang/Object;
.source "UsbUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NotificationWrapper"
.end annotation


# instance fields
.field private final action:Landroid/app/Notification$Action;

.field private alertOnce:Z

.field private channel:Ljava/lang/String;

.field private final icon:I

.field private instant:Z

.field private final message:Ljava/lang/CharSequence;

.field private ongoing:Z

.field private priority:I

.field final synthetic this$0:Lcom/android/server/usb/UsbUI;

.field private final title:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbUI;IIILandroid/app/Notification$Action;J)V
    .registers 10
    .param p2, "titleResId"    # I
    .param p3, "messageResId"    # I
    .param p4, "iconResId"    # I
    .param p5, "action"    # Landroid/app/Notification$Action;
    .param p6, "options"    # J

    .line 884
    iput-object p1, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 878
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->instant:Z

    .line 879
    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->ongoing:Z

    .line 880
    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->alertOnce:Z

    .line 881
    sget-object v1, Lcom/android/internal/notification/SystemNotificationChannels;->USB:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->channel:Ljava/lang/String;

    .line 882
    iput v0, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->priority:I

    .line 885
    const/4 v0, 0x0

    if-eqz p2, :cond_1e

    # getter for: Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/usb/UsbUI;->access$100(Lcom/android/server/usb/UsbUI;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1f

    :cond_1e
    move-object v1, v0

    :goto_1f
    iput-object v1, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->title:Ljava/lang/CharSequence;

    .line 886
    if-eqz p3, :cond_2b

    # getter for: Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/usb/UsbUI;->access$100(Lcom/android/server/usb/UsbUI;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2b
    iput-object v0, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->message:Ljava/lang/CharSequence;

    .line 887
    iput p4, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->icon:I

    .line 888
    iput-object p5, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->action:Landroid/app/Notification$Action;

    .line 889
    invoke-direct {p0, p6, p7}, Lcom/android/server/usb/UsbUI$NotificationWrapper;->parseOptions(J)V

    .line 890
    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/usb/UsbUI$NotificationWrapper;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbUI$NotificationWrapper;

    .line 871
    iget-boolean v0, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->instant:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/usb/UsbUI$NotificationWrapper;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbUI$NotificationWrapper;

    .line 871
    iget-boolean v0, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->ongoing:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/usb/UsbUI$NotificationWrapper;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbUI$NotificationWrapper;

    .line 871
    iget-object v0, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->title:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private buildNotificationBuilder()Landroid/app/Notification$Builder;
    .registers 5

    .line 904
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->this$0:Lcom/android/server/usb/UsbUI;

    .line 905
    # getter for: Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/usb/UsbUI;->access$100(Lcom/android/server/usb/UsbUI;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->channel:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->icon:I

    .line 906
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->priority:I

    .line 907
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->this$0:Lcom/android/server/usb/UsbUI;

    .line 908
    # getter for: Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/usb/UsbUI;->access$100(Lcom/android/server/usb/UsbUI;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x106001c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v2, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->message:Ljava/lang/CharSequence;

    .line 909
    invoke-virtual {v1, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 910
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 911
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 912
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 914
    .local v0, "builder":Landroid/app/Notification$Builder;
    iget-object v3, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->title:Ljava/lang/CharSequence;

    if-eqz v3, :cond_53

    .line 915
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 916
    iget-object v3, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 919
    :cond_53
    iget-object v3, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->message:Ljava/lang/CharSequence;

    if-eqz v3, :cond_5a

    .line 920
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 923
    :cond_5a
    iget-object v3, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->action:Landroid/app/Notification$Action;

    if-eqz v3, :cond_61

    .line 924
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 927
    :cond_61
    iget-boolean v3, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->ongoing:Z

    if-eqz v3, :cond_69

    .line 928
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    goto :goto_6c

    .line 930
    :cond_69
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 933
    :goto_6c
    iget-boolean v1, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->alertOnce:Z

    if-eqz v1, :cond_73

    .line 934
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 937
    :cond_73
    return-object v0
.end method

.method private parseOptions(J)V
    .registers 7
    .param p1, "options"    # J

    .line 893
    const-wide/16 v0, 0x1

    # invokes: Lcom/android/server/usb/UsbUI;->isIncludeOption(JJ)Z
    invoke-static {p1, p2, v0, v1}, Lcom/android/server/usb/UsbUI;->access$2300(JJ)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    iput-boolean v1, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->instant:Z

    .line 894
    :cond_b
    const-wide/16 v2, 0x2

    # invokes: Lcom/android/server/usb/UsbUI;->isIncludeOption(JJ)Z
    invoke-static {p1, p2, v2, v3}, Lcom/android/server/usb/UsbUI;->access$2300(JJ)Z

    move-result v0

    if-eqz v0, :cond_15

    iput-boolean v1, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->ongoing:Z

    .line 895
    :cond_15
    const-wide/16 v2, 0x4

    # invokes: Lcom/android/server/usb/UsbUI;->isIncludeOption(JJ)Z
    invoke-static {p1, p2, v2, v3}, Lcom/android/server/usb/UsbUI;->access$2300(JJ)Z

    move-result v0

    if-eqz v0, :cond_1f

    iput-boolean v1, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->alertOnce:Z

    .line 896
    :cond_1f
    const-wide/16 v2, 0x8

    # invokes: Lcom/android/server/usb/UsbUI;->isIncludeOption(JJ)Z
    invoke-static {p1, p2, v2, v3}, Lcom/android/server/usb/UsbUI;->access$2300(JJ)Z

    move-result v0

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->channel:Ljava/lang/String;

    .line 897
    :cond_2b
    const-wide/16 v2, 0x10

    # invokes: Lcom/android/server/usb/UsbUI;->isIncludeOption(JJ)Z
    invoke-static {p1, p2, v2, v3}, Lcom/android/server/usb/UsbUI;->access$2300(JJ)Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->priority:I

    .line 898
    :cond_36
    const-wide/16 v2, 0x20

    # invokes: Lcom/android/server/usb/UsbUI;->isIncludeOption(JJ)Z
    invoke-static {p1, p2, v2, v3}, Lcom/android/server/usb/UsbUI;->access$2300(JJ)Z

    move-result v0

    if-eqz v0, :cond_41

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->priority:I

    .line 899
    :cond_41
    const-wide/16 v2, 0x40

    # invokes: Lcom/android/server/usb/UsbUI;->isIncludeOption(JJ)Z
    invoke-static {p1, p2, v2, v3}, Lcom/android/server/usb/UsbUI;->access$2300(JJ)Z

    move-result v0

    if-eqz v0, :cond_4b

    iput v1, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->priority:I

    .line 900
    :cond_4b
    const-wide/16 v0, 0x80

    # invokes: Lcom/android/server/usb/UsbUI;->isIncludeOption(JJ)Z
    invoke-static {p1, p2, v0, v1}, Lcom/android/server/usb/UsbUI;->access$2300(JJ)Z

    move-result v0

    if-eqz v0, :cond_56

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->priority:I

    .line 901
    :cond_56
    return-void
.end method


# virtual methods
.method public build()Landroid/app/Notification;
    .registers 3

    .line 941
    invoke-direct {p0}, Lcom/android/server/usb/UsbUI$NotificationWrapper;->buildNotificationBuilder()Landroid/app/Notification$Builder;

    move-result-object v0

    .line 942
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    return-object v1
.end method
