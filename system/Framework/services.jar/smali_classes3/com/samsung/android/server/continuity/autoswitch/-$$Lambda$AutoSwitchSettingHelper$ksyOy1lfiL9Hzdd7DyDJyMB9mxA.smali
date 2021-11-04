.class public final synthetic Lcom/samsung/android/server/continuity/autoswitch/-$$Lambda$AutoSwitchSettingHelper$ksyOy1lfiL9Hzdd7DyDJyMB9mxA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/continuity/autoswitch/-$$Lambda$AutoSwitchSettingHelper$ksyOy1lfiL9Hzdd7DyDJyMB9mxA;->f$0:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/server/continuity/autoswitch/-$$Lambda$AutoSwitchSettingHelper$ksyOy1lfiL9Hzdd7DyDJyMB9mxA;->f$0:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    invoke-virtual {v0}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->lambda$checkAutoSwitchEnabled$1$AutoSwitchSettingHelper()V

    return-void
.end method
