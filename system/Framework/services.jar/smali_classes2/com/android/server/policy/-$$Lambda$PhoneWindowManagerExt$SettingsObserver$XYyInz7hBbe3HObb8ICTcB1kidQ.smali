.class public final synthetic Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$XYyInz7hBbe3HObb8ICTcB1kidQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

.field public final synthetic f$1:Landroid/content/ContentResolver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$XYyInz7hBbe3HObb8ICTcB1kidQ;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    iput-object p2, p0, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$XYyInz7hBbe3HObb8ICTcB1kidQ;->f$1:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$XYyInz7hBbe3HObb8ICTcB1kidQ;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/policy/-$$Lambda$PhoneWindowManagerExt$SettingsObserver$XYyInz7hBbe3HObb8ICTcB1kidQ;->f$1:Landroid/content/ContentResolver;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->lambda$observe$9$PhoneWindowManagerExt$SettingsObserver(Landroid/content/ContentResolver;Ljava/lang/Boolean;)V

    return-void
.end method
