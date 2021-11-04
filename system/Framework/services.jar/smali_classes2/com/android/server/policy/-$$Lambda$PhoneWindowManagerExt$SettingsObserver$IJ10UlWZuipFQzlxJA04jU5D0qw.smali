.class public final synthetic Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$IJ10UlWZuipFQzlxJA04jU5D0qw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$IJ10UlWZuipFQzlxJA04jU5D0qw;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$IJ10UlWZuipFQzlxJA04jU5D0qw;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->lambda$observe$23$PhoneWindowManagerExt$SettingsObserver()V

    return-void
.end method
