.class public final synthetic Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$xl1selBiWJZN6ZePqg10NeFYm5o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$xl1selBiWJZN6ZePqg10NeFYm5o;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$xl1selBiWJZN6ZePqg10NeFYm5o;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->lambda$observe$12$PhoneWindowManagerExt$SettingsObserver(Ljava/lang/Boolean;)V

    return-void
.end method
