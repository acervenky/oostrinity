.class public final synthetic Lcom/oneplus/systemui/bubbles/-$$Lambda$BubbleSettingsContainer$o03r_Jut3HUqt8900q4PVT3FZHE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;

.field private final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/systemui/bubbles/-$$Lambda$BubbleSettingsContainer$o03r_Jut3HUqt8900q4PVT3FZHE;->f$0:Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;

    iput-object p2, p0, Lcom/oneplus/systemui/bubbles/-$$Lambda$BubbleSettingsContainer$o03r_Jut3HUqt8900q4PVT3FZHE;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/systemui/bubbles/-$$Lambda$BubbleSettingsContainer$o03r_Jut3HUqt8900q4PVT3FZHE;->f$0:Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;

    iget-object p0, p0, Lcom/oneplus/systemui/bubbles/-$$Lambda$BubbleSettingsContainer$o03r_Jut3HUqt8900q4PVT3FZHE;->f$1:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->lambda$new$0$BubbleSettingsContainer(Landroid/content/Intent;)V

    return-void
.end method
