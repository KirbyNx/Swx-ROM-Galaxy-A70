.class final Lcom/android/server/infra/AbstractMasterSystemService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AbstractMasterSystemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/infra/AbstractMasterSystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/infra/AbstractMasterSystemService;


# direct methods
.method constructor <init>(Lcom/android/server/infra/AbstractMasterSystemService;Landroid/os/Handler;)V
    .registers 8
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1024
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService$SettingsObserver;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>.SettingsObserver;"
    iput-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$SettingsObserver;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 1025
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1026
    invoke-virtual {p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1027
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceSettingsProperty()Ljava/lang/String;

    move-result-object v1

    .line 1028
    .local v1, "serviceProperty":Ljava/lang/String;
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1c

    .line 1029
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1032
    :cond_1c
    const-string/jumbo v4, "user_setup_complete"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1034
    invoke-virtual {p1, v0, p0}, Lcom/android/server/infra/AbstractMasterSystemService;->registerForExtraSettingsChanges(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    .line 1035
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .registers 7
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 1039
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService$SettingsObserver;, "Lcom/android/server/infra/AbstractMasterSystemService<TM;TS;>.SettingsObserver;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$SettingsObserver;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$SettingsObserver;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChange(): uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    :cond_27
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 1041
    .local v0, "property":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$SettingsObserver;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceSettingsProperty()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    .line 1042
    const-string/jumbo v1, "user_setup_complete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    goto :goto_47

    .line 1047
    :cond_41
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$SettingsObserver;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v1, p3, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->onSettingsChanged(ILjava/lang/String;)V

    goto :goto_52

    .line 1043
    :cond_47
    :goto_47
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$SettingsObserver;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1044
    :try_start_4c
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService$SettingsObserver;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v2, p3}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceLocked(I)V

    .line 1045
    monitor-exit v1

    .line 1049
    :goto_52
    return-void

    .line 1045
    :catchall_53
    move-exception v2

    monitor-exit v1
    :try_end_55
    .catchall {:try_start_4c .. :try_end_55} :catchall_53

    throw v2
.end method
