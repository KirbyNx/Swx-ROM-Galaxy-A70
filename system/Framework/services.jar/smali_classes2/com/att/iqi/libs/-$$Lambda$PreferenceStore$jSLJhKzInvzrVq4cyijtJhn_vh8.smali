.class public final synthetic Lcom/att/iqi/libs/-$$Lambda$PreferenceStore$jSLJhKzInvzrVq4cyijtJhn_vh8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/att/iqi/libs/PreferenceStore$PreferenceChangeListener;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/att/iqi/libs/PreferenceStore$PreferenceChangeListener;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/att/iqi/libs/-$$Lambda$PreferenceStore$jSLJhKzInvzrVq4cyijtJhn_vh8;->f$0:Lcom/att/iqi/libs/PreferenceStore$PreferenceChangeListener;

    iput-object p2, p0, Lcom/att/iqi/libs/-$$Lambda$PreferenceStore$jSLJhKzInvzrVq4cyijtJhn_vh8;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/att/iqi/libs/-$$Lambda$PreferenceStore$jSLJhKzInvzrVq4cyijtJhn_vh8;->f$0:Lcom/att/iqi/libs/PreferenceStore$PreferenceChangeListener;

    iget-object v1, p0, Lcom/att/iqi/libs/-$$Lambda$PreferenceStore$jSLJhKzInvzrVq4cyijtJhn_vh8;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/att/iqi/libs/PreferenceStore;->lambda$setValue$1(Lcom/att/iqi/libs/PreferenceStore$PreferenceChangeListener;Ljava/lang/String;)V

    return-void
.end method
