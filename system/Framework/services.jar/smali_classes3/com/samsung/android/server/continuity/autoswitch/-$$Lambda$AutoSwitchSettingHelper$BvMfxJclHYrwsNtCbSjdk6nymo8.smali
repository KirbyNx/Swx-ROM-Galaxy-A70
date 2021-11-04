.class public final synthetic Lcom/samsung/android/server/continuity/autoswitch/-$$Lambda$AutoSwitchSettingHelper$BvMfxJclHYrwsNtCbSjdk6nymo8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;Ljava/util/ArrayList;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/continuity/autoswitch/-$$Lambda$AutoSwitchSettingHelper$BvMfxJclHYrwsNtCbSjdk6nymo8;->f$0:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    iput-object p2, p0, Lcom/samsung/android/server/continuity/autoswitch/-$$Lambda$AutoSwitchSettingHelper$BvMfxJclHYrwsNtCbSjdk6nymo8;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/server/continuity/autoswitch/-$$Lambda$AutoSwitchSettingHelper$BvMfxJclHYrwsNtCbSjdk6nymo8;->f$0:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    iget-object v1, p0, Lcom/samsung/android/server/continuity/autoswitch/-$$Lambda$AutoSwitchSettingHelper$BvMfxJclHYrwsNtCbSjdk6nymo8;->f$1:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->lambda$checkAutoSwitchEnabled$0$AutoSwitchSettingHelper(Ljava/util/ArrayList;)V

    return-void
.end method
