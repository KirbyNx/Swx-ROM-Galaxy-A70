.class public Lcom/android/server/notification/toast/TextToastRecord;
.super Lcom/android/server/notification/toast/ToastRecord;
.source "TextToastRecord.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NotificationService"

.field private static sCheckDex:Z


# instance fields
.field private final mCallback:Landroid/app/ITransientNotificationCallback;

.field private final mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field public final text:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/notification/toast/TextToastRecord;->sCheckDex:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/statusbar/StatusBarManagerInternal;IILjava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;ILandroid/os/Binder;ILandroid/app/ITransientNotificationCallback;ZLjava/lang/String;)V
    .registers 25
    .param p1, "notificationManager"    # Lcom/android/server/notification/NotificationManagerService;
    .param p2, "statusBarManager"    # Lcom/android/server/statusbar/StatusBarManagerInternal;
    .param p3, "uid"    # I
    .param p4, "pid"    # I
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "token"    # Landroid/os/IBinder;
    .param p7, "text"    # Ljava/lang/CharSequence;
    .param p8, "duration"    # I
    .param p9, "windowToken"    # Landroid/os/Binder;
    .param p10, "displayId"    # I
    .param p11, "callback"    # Landroid/app/ITransientNotificationCallback;
    .param p12, "isDexState"    # Z
    .param p13, "message"    # Ljava/lang/String;

    .line 51
    move-object v10, p0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p8

    move-object/from16 v7, p9

    move/from16 v8, p10

    move-object/from16 v9, p13

    invoke-direct/range {v0 .. v9}, Lcom/android/server/notification/toast/ToastRecord;-><init>(Lcom/android/server/notification/NotificationManagerService;IILjava/lang/String;Landroid/os/IBinder;ILandroid/os/Binder;ILjava/lang/String;)V

    .line 52
    move-object v0, p2

    iput-object v0, v10, Lcom/android/server/notification/toast/TextToastRecord;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 53
    move-object/from16 v1, p11

    iput-object v1, v10, Lcom/android/server/notification/toast/TextToastRecord;->mCallback:Landroid/app/ITransientNotificationCallback;

    .line 54
    invoke-static/range {p7 .. p7}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    iput-object v2, v10, Lcom/android/server/notification/toast/TextToastRecord;->text:Ljava/lang/CharSequence;

    .line 56
    sput-boolean p12, Lcom/android/server/notification/toast/TextToastRecord;->sCheckDex:Z

    .line 58
    return-void
.end method


# virtual methods
.method public hide()V
    .registers 4

    .line 76
    iget-object v0, p0, Lcom/android/server/notification/toast/TextToastRecord;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    const-string v1, "Cannot hide toast that wasn\'t shown"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/android/server/notification/toast/TextToastRecord;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    iget-object v1, p0, Lcom/android/server/notification/toast/TextToastRecord;->pkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/notification/toast/TextToastRecord;->token:Landroid/os/IBinder;

    invoke-interface {v0, v1, v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->hideToast(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 79
    return-void
.end method

.method public show()Z
    .registers 12

    .line 62
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    const-string v1, "NotificationService"

    if-eqz v0, :cond_26

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Show pkg="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/toast/TextToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " text="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/toast/TextToastRecord;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_26
    iget-object v2, p0, Lcom/android/server/notification/toast/TextToastRecord;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v2, :cond_42

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatusBar not available to show text toast for package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/toast/TextToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v0, 0x0

    return v0

    .line 69
    :cond_42
    iget v3, p0, Lcom/android/server/notification/toast/TextToastRecord;->uid:I

    iget-object v4, p0, Lcom/android/server/notification/toast/TextToastRecord;->pkg:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/notification/toast/TextToastRecord;->token:Landroid/os/IBinder;

    iget-object v6, p0, Lcom/android/server/notification/toast/TextToastRecord;->text:Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/android/server/notification/toast/TextToastRecord;->windowToken:Landroid/os/Binder;

    invoke-virtual {p0}, Lcom/android/server/notification/toast/TextToastRecord;->getDuration()I

    move-result v8

    iget-object v9, p0, Lcom/android/server/notification/toast/TextToastRecord;->mCallback:Landroid/app/ITransientNotificationCallback;

    sget-boolean v10, Lcom/android/server/notification/toast/TextToastRecord;->sCheckDex:Z

    invoke-interface/range {v2 .. v10}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showToastForDex(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/IBinder;ILandroid/app/ITransientNotificationCallback;Z)V

    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextToastRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/toast/TextToastRecord;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/toast/TextToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/toast/TextToastRecord;->uid:I

    .line 85
    invoke-static {v1}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/toast/TextToastRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/toast/TextToastRecord;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p0}, Lcom/android/server/notification/toast/TextToastRecord;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    return-object v0
.end method
