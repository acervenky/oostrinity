.class public Lcom/oneplus/support/lifecycle/ViewModelProvider;
.super Ljava/lang/Object;
.source "ViewModelProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/support/lifecycle/ViewModelProvider$Factory;
    }
.end annotation


# instance fields
.field private final mFactory:Lcom/oneplus/support/lifecycle/ViewModelProvider$Factory;

.field private final mViewModelStore:Lcom/oneplus/support/lifecycle/ViewModelStore;


# direct methods
.method public constructor <init>(Lcom/oneplus/support/lifecycle/ViewModelStore;Lcom/oneplus/support/lifecycle/ViewModelProvider$Factory;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p2, p0, Lcom/oneplus/support/lifecycle/ViewModelProvider;->mFactory:Lcom/oneplus/support/lifecycle/ViewModelProvider$Factory;

    .line 80
    iput-object p1, p0, Lcom/oneplus/support/lifecycle/ViewModelProvider;->mViewModelStore:Lcom/oneplus/support/lifecycle/ViewModelStore;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Class;)Lcom/oneplus/support/lifecycle/ViewModel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/oneplus/support/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 99
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.oneplus.support.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/support/lifecycle/ViewModelProvider;->get(Ljava/lang/String;Ljava/lang/Class;)Lcom/oneplus/support/lifecycle/ViewModel;

    move-result-object p0

    return-object p0

    .line 101
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public get(Ljava/lang/String;Ljava/lang/Class;)Lcom/oneplus/support/lifecycle/ViewModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/oneplus/support/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/oneplus/support/lifecycle/ViewModelProvider;->mViewModelStore:Lcom/oneplus/support/lifecycle/ViewModelStore;

    invoke-virtual {v0, p1}, Lcom/oneplus/support/lifecycle/ViewModelStore;->get(Ljava/lang/String;)Lcom/oneplus/support/lifecycle/ViewModel;

    move-result-object v0

    .line 125
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/oneplus/support/lifecycle/ViewModelProvider;->mFactory:Lcom/oneplus/support/lifecycle/ViewModelProvider$Factory;

    invoke-interface {v0, p2}, Lcom/oneplus/support/lifecycle/ViewModelProvider$Factory;->create(Ljava/lang/Class;)Lcom/oneplus/support/lifecycle/ViewModel;

    move-result-object p2

    .line 136
    iget-object p0, p0, Lcom/oneplus/support/lifecycle/ViewModelProvider;->mViewModelStore:Lcom/oneplus/support/lifecycle/ViewModelStore;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/support/lifecycle/ViewModelStore;->put(Ljava/lang/String;Lcom/oneplus/support/lifecycle/ViewModel;)V

    return-object p2
.end method
