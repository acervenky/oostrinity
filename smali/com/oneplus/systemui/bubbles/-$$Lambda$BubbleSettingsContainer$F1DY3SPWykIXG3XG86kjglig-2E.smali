.class public final synthetic Lcom/oneplus/systemui/bubbles/-$$Lambda$BubbleSettingsContainer$F1DY3SPWykIXG3XG86kjglig-2E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;

.field private final synthetic f$1:Landroid/app/PendingIntent;


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/systemui/bubbles/-$$Lambda$BubbleSettingsContainer$F1DY3SPWykIXG3XG86kjglig-2E;->f$0:Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;

    iput-object p2, p0, Lcom/oneplus/systemui/bubbles/-$$Lambda$BubbleSettingsContainer$F1DY3SPWykIXG3XG86kjglig-2E;->f$1:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/systemui/bubbles/-$$Lambda$BubbleSettingsContainer$F1DY3SPWykIXG3XG86kjglig-2E;->f$0:Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;

    iget-object p0, p0, Lcom/oneplus/systemui/bubbles/-$$Lambda$BubbleSettingsContainer$F1DY3SPWykIXG3XG86kjglig-2E;->f$1:Landroid/app/PendingIntent;

    invoke-virtual {v0, p0}, Lcom/oneplus/systemui/bubbles/BubbleSettingsContainer;->lambda$new$2$BubbleSettingsContainer(Landroid/app/PendingIntent;)V

    return-void
.end method
