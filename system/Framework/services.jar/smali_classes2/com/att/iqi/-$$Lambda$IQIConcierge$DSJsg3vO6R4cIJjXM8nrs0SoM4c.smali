.class public final synthetic Lcom/att/iqi/-$$Lambda$IQIConcierge$DSJsg3vO6R4cIJjXM8nrs0SoM4c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/att/iqi/libs/PreferenceStore$PreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/att/iqi/IQIConcierge;


# direct methods
.method public synthetic constructor <init>(Lcom/att/iqi/IQIConcierge;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/att/iqi/-$$Lambda$IQIConcierge$DSJsg3vO6R4cIJjXM8nrs0SoM4c;->f$0:Lcom/att/iqi/IQIConcierge;

    return-void
.end method


# virtual methods
.method public final onPreferenceChanged(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/att/iqi/-$$Lambda$IQIConcierge$DSJsg3vO6R4cIJjXM8nrs0SoM4c;->f$0:Lcom/att/iqi/IQIConcierge;

    invoke-virtual {v0, p1}, Lcom/att/iqi/IQIConcierge;->lambda$new$0$IQIConcierge(Ljava/lang/String;)V

    return-void
.end method
