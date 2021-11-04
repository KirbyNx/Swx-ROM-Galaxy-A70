.class public interface abstract Lcom/android/internal/net/IDomainFilterEventListener;
.super Ljava/lang/Object;
.source "IDomainFilterEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/IDomainFilterEventListener$Stub;,
        Lcom/android/internal/net/IDomainFilterEventListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onDomainFilterReportEvent(IIJLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
