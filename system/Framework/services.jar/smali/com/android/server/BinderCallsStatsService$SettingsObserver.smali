.class Lcom/android/server/BinderCallsStatsService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BinderCallsStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BinderCallsStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingsObserver"
.end annotation


# static fields
.field private static final SETTINGS_DETAILED_TRACKING_KEY:Ljava/lang/String; = "detailed_tracking"

.field private static final SETTINGS_ENABLED_KEY:Ljava/lang/String; = "enabled"

.field private static final SETTINGS_MAX_CALL_STATS_KEY:Ljava/lang/String; = "max_call_stats_count"

.field private static final SETTINGS_SAMPLING_INTERVAL_KEY:Ljava/lang/String; = "sampling_interval"

.field private static final SETTINGS_TRACK_DIRECT_CALLING_UID_KEY:Ljava/lang/String; = "track_calling_uid"

.field private static final SETTINGS_TRACK_SCREEN_INTERACTIVE_KEY:Ljava/lang/String; = "track_screen_state"

.field private static final SETTINGS_UPLOAD_DATA_KEY:Ljava/lang/String; = "upload_data"


# instance fields
.field private final mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private final mParser:Landroid/util/KeyValueListParser;

.field private final mUri:Landroid/net/Uri;

.field private final mWorkSourceProvider:Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/os/BinderCallsStats;Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "binderCallsStats"    # Lcom/android/internal/os/BinderCallsStats;
    .param p3, "workSourceProvider"    # Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;

    .line 152
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 144
    const-string v0, "binder_calls_stats"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mUri:Landroid/net/Uri;

    .line 146
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    .line 153
    iput-object p1, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mContext:Landroid/content/Context;

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 156
    iput-object p2, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 157
    iput-object p3, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mWorkSourceProvider:Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;

    .line 159
    invoke-virtual {p0}, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->onChange()V

    .line 160
    return-void
.end method

.method static synthetic lambda$onChange$0(I)I
    .registers 2
    .param p0, "x"    # I

    .line 208
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method


# virtual methods
.method public onChange()V
    .registers 6

    .line 171
    const-string/jumbo v0, "persist.sys.binder_calls_detailed_tracking"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 172
    return-void

    .line 176
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "binder_calls_stats"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_1f} :catch_20

    .line 180
    goto :goto_28

    .line 178
    :catch_20
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "BinderCallsStatsService"

    const-string v2, "Bad binder call stats settings"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_28
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "detailed_tracking"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BinderCallsStats;->setDetailedTracking(Z)V

    .line 183
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    sget v2, Lcom/android/internal/os/BinderCallsStats;->PERIODIC_SAMPLING_INTERVAL_DEFAULT:I

    const-string/jumbo v4, "sampling_interval"

    invoke-virtual {v1, v4, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BinderCallsStats;->setSamplingInterval(I)V

    .line 186
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const/16 v2, 0x5dc

    const-string/jumbo v4, "max_call_stats_count"

    invoke-virtual {v1, v4, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BinderCallsStats;->setMaxBinderCallStats(I)V

    .line 189
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const/4 v2, 0x0

    .line 190
    const-string/jumbo v4, "track_screen_state"

    invoke-virtual {v1, v4, v2}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 189
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BinderCallsStats;->setTrackScreenInteractive(Z)V

    .line 192
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    .line 193
    const-string/jumbo v2, "track_calling_uid"

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 192
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BinderCallsStats;->setTrackDirectCallerUid(Z)V

    .line 197
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    .line 198
    const-string v1, "enabled"

    invoke-virtual {v0, v1, v3}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 199
    .local v0, "enabled":Z
    iget-boolean v1, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mEnabled:Z

    if-eq v1, v0, :cond_ac

    .line 200
    if-eqz v0, :cond_94

    .line 201
    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-static {v1}, Landroid/os/Binder;->setObserver(Lcom/android/internal/os/BinderInternal$Observer;)V

    .line 202
    new-instance v1, Landroid/os/Binder$PropagateWorkSourceTransactListener;

    invoke-direct {v1}, Landroid/os/Binder$PropagateWorkSourceTransactListener;-><init>()V

    invoke-static {v1}, Landroid/os/Binder;->setProxyTransactListener(Landroid/os/Binder$ProxyTransactListener;)V

    .line 204
    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mWorkSourceProvider:Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;

    invoke-static {v1}, Landroid/os/Binder;->setWorkSourceProvider(Lcom/android/internal/os/BinderInternal$WorkSourceProvider;)V

    goto :goto_a0

    .line 206
    :cond_94
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Binder;->setObserver(Lcom/android/internal/os/BinderInternal$Observer;)V

    .line 207
    invoke-static {v1}, Landroid/os/Binder;->setProxyTransactListener(Landroid/os/Binder$ProxyTransactListener;)V

    .line 208
    sget-object v1, Lcom/android/server/-$$Lambda$BinderCallsStatsService$SettingsObserver$bif9uA0lzoT6htcKe6MNsrH_ha4;->INSTANCE:Lcom/android/server/-$$Lambda$BinderCallsStatsService$SettingsObserver$bif9uA0lzoT6htcKe6MNsrH_ha4;

    invoke-static {v1}, Landroid/os/Binder;->setWorkSourceProvider(Lcom/android/internal/os/BinderInternal$WorkSourceProvider;)V

    .line 210
    :goto_a0
    iput-boolean v0, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mEnabled:Z

    .line 211
    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {v1}, Lcom/android/internal/os/BinderCallsStats;->reset()V

    .line 212
    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/BinderCallsStats;->setAddDebugEntries(Z)V

    .line 214
    :cond_ac
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .registers 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 164
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 165
    invoke-virtual {p0}, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->onChange()V

    .line 167
    :cond_b
    return-void
.end method
